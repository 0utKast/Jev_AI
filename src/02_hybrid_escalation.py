#!/usr/bin/env python3
"""
==============================================================================
CASO PRÁCTICO 2: ESCALADO HÍBRIDO (Patrón Confidence Gate / Triage)
==============================================================================
Demuestra la arquitectura híbrida dual (Sistema 1 + Sistema 2) documentada por
Chip Huyen (AI Engineering, 2024) y Valliappa Lakshmanan & Hannes Hapke
(Generative AI Design Patterns, 2025).

Jev (System 1) actúa como filtro ultrarrápido y calibrado:
- Peticiones con confianza calibrada p >= 0.85 -> Resueltas en ~70 ms (Vía Rápida, 0 tokens)
- Peticiones ambiguas o complejas p < 0.85 -> Escaladas a LLM deliberativo / Humano

Requisitos: 100% biblioteca estándar de Python (Cero instalaciones / Sin pip).
==============================================================================
"""

import sys
import os
import time
from typing import List, Dict, Any, Tuple

# Compatibilidad para ejecución como script de terminal o en Google Colab / Jupyter
if "__file__" in globals():
    base_dir = os.path.dirname(__file__)
    sys.path.insert(0, os.path.abspath(os.path.join(base_dir, "..", "src")))
    sys.path.insert(0, os.path.abspath(base_dir))

try:
    from typesafe_client import TypeSafeClient, Choice, Score, Noul
except ImportError:
    try:
        from src.typesafe_client import TypeSafeClient, Choice, Score, Noul
    except ImportError:
        pass


# ==============================================================================
# FRAGMENTO DE CÓDIGO 1: Definición de Primitivas para la Puerta de Confianza
# ==============================================================================
def inicializar_puerta_confianza():
    """Configura el cliente y las primitivas semánticas de filtrado actuarial."""
    client = TypeSafeClient(api_key="ts_live_secret_key")

    # 1. Primitiva Categórica de Intención (Identificación de casos estándar)
    p_intencion = Choice(
        name="intencion",
        options=["consulta_saldo", "reset_password", "horario_oficina", "caso_complejo_abierto"]
    )

    # 2. Primitiva Continua de Claridad (1 a 10)
    p_claridad = Score(
        name="claridad",
        rubric="Evalúa de 1 a 10 qué tan explícita, completa y libre de ambigüedad es la consulta"
    )

    # 3. Primitiva Booleana Calibrada para Detección de Casos Borde
    p_caso_borde = Noul(
        name="es_caso_borde",
        assertion="¿La consulta plantea condiciones excepcionales, conflictos de políticas o requiere razonamiento profundo?"
    )

    return client, p_intencion, p_claridad, p_caso_borde


# ==============================================================================
# FRAGMENTO DE CÓDIGO 2: Lógica de la Puerta de Confianza (Confidence Gate)
# ==============================================================================
UMBRAL_CONFIANZA = 0.85

def evaluar_puerta_confianza(client, p_int, p_cla, p_bor, consulta: str) -> Dict[str, Any]:
    """Evalúa la consulta en Jev (System 1) en ~70 ms y decide si escala a System 2."""
    inicio = time.perf_counter()
    
    # Paso 1: Inferencia ultrarrápida O(1) con Jev
    res = client.system_one(consulta, p_int, p_cla, p_bor)
    
    intencion = res.intencion.choice
    probabilidad = res.intencion.probability
    claridad = res.claridad.score
    es_caso_borde = res.es_caso_borde.value
    prob_borde = res.es_caso_borde.probability

    # Paso 2: Evaluación del umbral actuarial RLCD
    # Para resolver por vía rápida exigimos: alta probabilidad, buena claridad y NO ser caso borde
    puede_resolver_directo = (
        probabilidad >= UMBRAL_CONFIANZA and
        claridad >= 7.0 and
        not es_caso_borde and
        intencion != "caso_complejo_abierto"
    )

    if puede_resolver_directo:
        # VÍA RÁPIDA (SYSTEM 1): Despacho local determinista
        respuesta = generar_respuesta_determinista(intencion)
        latencia_total = res.latency_ms
        ruta = "VÍA RÁPIDA (SYSTEM 1 - JEV)"
        tokens_generados = 0
        costo_dolares = 0.00015  # Solo tokens de entrada
    else:
        # VÍA LENTA / DELIBERATIVA (SYSTEM 2): Escalado a LLM generativo pesado
        latencia_llm = 2350.0  # Simulación de LLM generativo deliberativo con Chain of Thought
        respuesta = simular_escalado_llm_system_2(consulta, intencion, es_caso_borde)
        latencia_total = res.latency_ms + latencia_llm
        ruta = "VÍA LENTA (SYSTEM 2 - LLM GENERATIVO)"
        tokens_generados = 185
        costo_dolares = 0.00480  # Inferencia LLM pesado + salida estructurada

    return {
        "consulta": consulta,
        "intencion": intencion,
        "probabilidad": probabilidad,
        "claridad": claridad,
        "es_caso_borde": es_caso_borde,
        "prob_borde": prob_borde,
        "ruta": ruta,
        "latencia_ms": latencia_total,
        "tokens_salida": tokens_generados,
        "costo": costo_dolares,
        "respuesta": respuesta
    }


# ==============================================================================
# FRAGMENTO DE CÓDIGO 3: Despacho Rápido vs. Simulación de LLM Deliberativo
# ==============================================================================
def generar_respuesta_determinista(intencion: str) -> str:
    """Respuestas verificadas de plantilla inmediata para peticiones estándar (0 ms)."""
    respuestas = {
        "reset_password": "Para restablecer tu contraseña, ingresa en https://app.example.com/recovery e introduce tu email corporativo.",
        "horario_oficina": "Nuestro horario de atención en la oficina de Madrid es de lunes a viernes de 09:00 a 18:00 CET.",
        "consulta_saldo": "Tu saldo actual disponible es de 1.450,00 EUR (sincronizado con API bancaria en tiempo real)."
    }
    return respuestas.get(intencion, "Consulta estándar procesada con éxito.")


def simular_escalado_llm_system_2(consulta: str, intencion: str, es_borde: bool) -> str:
    """Simula la respuesta generada tras un proceso de razonamiento lento en LLM."""
    return (
        "[RESPUESTA RAZONADA SYSTEM 2]: Tras analizar las cláusulas 4.2 y 7.1 del contrato anual corporativo, "
        "la cancelación en el tercer mes con cupón promocional genera una liquidación proporcional con retención "
        "del 15% administrativo. Las licencias de usuarios externos deberán migrarse a cuentas individuales antes de 30 días."
    )


# ==============================================================================
# BANCO DE PRUEBAS Y BENCHMARKING DE ESCALADO HÍBRIDO
# ==============================================================================
def ejecutar_demostracion():
    print("=" * 85)
    print("DEMOSTRACIÓN CASO 2: ESCALADO HÍBRIDO CON CONFIDENCE GATE (TYPESAFE AI)")
    print("=" * 85)
    print(f"Umbral de Confianza Calibrada RLCD: {UMBRAL_CONFIANZA * 100:.0f}%\n")

    client, p_int, p_cla, p_bor = inicializar_puerta_confianza()

    consultas_prueba = [
        {
            "id": "QRY-01",
            "texto": "Hola, olvidé por completo mi contraseña de acceso y no me llega el correo, ¿cómo la restablezco?"
        },
        {
            "id": "QRY-02",
            "texto": "¿Podrían indicarme el horario de apertura al público de las oficinas en Madrid?"
        },
        {
            "id": "QRY-03",
            "texto": "Necesito saber el saldo que me queda disponible en mi cuenta antes de realizar un pago."
        },
        {
            "id": "QRY-04",
            "texto": (
                "Quisiera saber qué ocurre con mi saldo acumulado si cancelo la suscripción anual en el tercer mes "
                "habiendo utilizado un cupón promocional no reembolsable y habiendo transferido dos licencias a una filial exterior. "
                "¿Cómo afecta a mi facturación y retención de impuestos?"
            )
        }
    ]

    resultados = []
    for c in consultas_prueba:
        res = evaluar_puerta_confianza(client, p_int, p_cla, p_bor, c["texto"])
        resultados.append(res)

        print(f"┌─ [{c['id']}] Consulta: \"{c['texto'][:70]}...\"")
        print(f"│  Intención detectada : {res['intencion'].upper()} (p = {res['probabilidad']:.2f})")
        print(f"│  Claridad semántica  : {res['claridad']:.1f}/10  |  Caso borde: {res['es_caso_borde']} (p={res['prob_borde']:.2f})")
        print(f"│  Decisión de Enrutado: >>> {res['ruta']} <<<")
        print(f"│  Latencia total      : {res['latencia_ms']:.1f} ms  |  Tokens Salida: {res['tokens_salida']}  |  Coste: ${res['costo']:.5f}")
        print(f"└─ Respuesta generada  : {res['respuesta'][:95]}...\n")

    # Estadísticas Globales del Triage Híbrido
    vias_rapidas = [r for r in resultados if "SYSTEM 1" in r["ruta"]]
    vias_lentas = [r for r in resultados if "SYSTEM 2" in r["ruta"]]
    
    pct_rapidas = (len(vias_rapidas) / len(resultados)) * 100
    pct_lentas = (len(vias_lentas) / len(resultados)) * 100

    print("=" * 85)
    print("RESUMEN OPERATIVO DEL LOTE DE PRUEBAS")
    print("=" * 85)
    print(f"Total Consultas Procesadas : {len(resultados)}")
    print(f"Resueltas por Vía Rápida  : {len(vias_rapidas)} ({pct_rapidas:.1f}%) -> Latencia media: ~72 ms")
    print(f"Escaladas a Vía Lenta     : {len(vias_lentas)} ({pct_lentas:.1f}%) -> Latencia media: ~2.420 ms")
    print("=" * 85)

    # Simulación de Impacto a Gran Escala (100.000 consultas mensuales)
    print("\n" + "=" * 85)
    print("PROYECCIÓN A ESCALA (100.000 CONSULTAS MENSUALES: 85% RÁPIDO / 15% ESCALADO)")
    print("=" * 85)
    
    # En producción habitual: 85% estándar, 15% complejas
    coste_solo_llm = 100_000 * 0.00480  # $480.00
    coste_hibrido = (85_000 * 0.00015) + (15_000 * 0.00480) # $12.75 + $72.00 = $84.75
    latencia_p50_solo_llm = 2350.0 # ms
    latencia_p50_hibrido = 72.2 # ms (el 85% de los usuarios experimenta 72 ms!)
    latencia_media_ponderada = (0.85 * 72.2) + (0.15 * 2420.0) # 424.3 ms

    print(f"{'Métrica del Sistema':<32} | {'Arquitectura Solo LLM':<22} | {'Arquitectura Híbrida (Jev Gate)':<25}")
    print("-" * 85)
    print(f"{'Latencia Típica Usuario (P50)':<32} | {latencia_p50_solo_llm:<20.1f} ms | {latencia_p50_hibrido:<22.1f} ms")
    print(f"{'Latencia Media Ponderada':<32} | {latencia_p50_solo_llm:<20.1f} ms | {latencia_media_ponderada:<22.1f} ms")
    print(f"{'Factor Aceleración P50':<32} | {'1.0x (Línea base)':<22} | {f'{latencia_p50_solo_llm/latencia_p50_hibrido:.1f}x más rápido':<25}")
    print(f"{'Coste Mensual (100k queries)':<32} | {f'${coste_solo_llm:.2f}':<22} | {f'${coste_hibrido:.2f}':<25}")
    print(f"{'Ahorro Financiero Neto':<32} | {'0.0%':<22} | {f'{((coste_solo_llm - coste_hibrido)/coste_solo_llm)*100:.1f}%':<25}")
    print("=" * 85)


if __name__ == "__main__":
    ejecutar_demostracion()
