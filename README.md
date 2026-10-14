# Jev AI: Modelos «System One», RLCD y Arquitectura de Sistemas de IA

[![Ver Curso Completo en YouTube](https://img.shields.io/badge/YouTube-Curso_Completo_(1h_10m)-red?logo=youtube)](https://www.youtube.com/watch?v=u9ND2Zkd3Kk)
[![Guía Bibliográfica PDF](https://img.shields.io/badge/PDF-Guía_Bibliográfica_y_Citas-blue?logo=adobeacrobatreader)](./guia_bibliografica_jev_ai.pdf)
[![Python 3.9+](https://img.shields.io/badge/Python-100%25_Stdlib_(Sin_Dependencias)-green?logo=python)](./src/)

Repositorio oficial de materiales, documentación teórica, cuadernos interactivos de **Google Colab** y bibliografía del curso completo sobre **Jev** (el modelo *System One* no generativo desarrollado por **TypeSafe AI**) y el aprendizaje por refuerzo para decisiones calibradas (**RLCD** - *Reinforcement Learning for Calibrated Decisions*).

📺 **Vídeo del Curso Completo en YouTube:** [https://www.youtube.com/watch?v=u9ND2Zkd3Kk](https://www.youtube.com/watch?v=u9ND2Zkd3Kk)

---

## 🚀 Laboratorios Prácticos en Google Colab (1 Clic, Sin Instalación)

Todos los laboratorios están programados íntegramente con la biblioteca estándar de Python (sin necesidad de instalar paquetes externos ni configurar claves de pago) para que puedas ejecutarlos directamente desde el navegador:

| # | Laboratorio Práctico | Cuaderno en GitHub | Ejecutar en Google Colab | Script Local | Métricas Clave |
| :-: | :--- | :--- | :---: | :--- | :--- |
| **1** | **Fast Router** (Enrutamiento Semántico en API Gateway) | [`01_fast_router_colab.ipynb`](./notebooks/01_fast_router_colab.ipynb) | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks/01_fast_router_colab.ipynb) | [`01_fast_router.py`](./src/01_fast_router.py) | Latencia **~71 ms** · Ahorro de coste **91,2%** · **0% error JSON** |
| **2** | **Escalado Híbrido** (Patrón *Confidence Gate* al 85%) | [`02_hybrid_escalation_colab.ipynb`](./notebooks/02_hybrid_escalation_colab.ipynb) | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks/02_hybrid_escalation_colab.ipynb) | [`02_hybrid_escalation.py`](./src/02_hybrid_escalation.py) | P50 **72,2 ms** · Desvío **80%** en Sistema 1 · Ahorro **82,3%** |
| **3** | **Realtime Guardrails** (Seguridad, Jailbreak DAN y PII) | [`03_realtime_guardrail_colab.ipynb`](./notebooks/03_realtime_guardrail_colab.ipynb) | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks/03_realtime_guardrail_colab.ipynb) | [`03_realtime_guardrail.py`](./src/03_realtime_guardrail.py) | Intercepción síncrona en **~73 ms** sin penalizar el TTFT |
| **4** | **Deterministic Tool Dispatch** (Agentes y Puerta 2FA) | [`04_tool_dispatch_colab.ipynb`](./notebooks/04_tool_dispatch_colab.ipynb) | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks/04_tool_dispatch_colab.ipynb) | [`04_tool_dispatch.py`](./src/04_tool_dispatch.py) | Selección de herramientas en **~71,5 ms** · Bloqueo 2FA |
| **5** | **Benchmark Cuantitativo** (1.000 Peticiones Jev vs. LLMs) | [`05_benchmark_eval_colab.ipynb`](./notebooks/05_benchmark_eval_colab.ipynb) | [![Open In Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks/05_benchmark_eval_colab.ipynb) | [`05_benchmark_eval.py`](./src/05_benchmark_eval.py) | Aceleración **~40x en P99** (75,6 ms) · **100% SLA <100 ms** |

---

## 📚 Materiales Complementarios y Guía Bibliográfica

* 📕 **[Guía Bibliográfica y de Citas de Autoridad en PDF (`guia_bibliografica_jev_ai.pdf`)](./guia_bibliografica_jev_ai.pdf)**: Documento maquetado descargable con todas las obras técnicas de O'Reilly Learning, artículos fundacionales y trazabilidad por módulo.
* 📄 **[Catálogo Maestro de Bibliografía en Markdown (`BIBLIOGRAFIA_Y_CITAS_DE_AUTORIDAD.md`)](./BIBLIOGRAFIA_Y_CITAS_DE_AUTORIDAD.md)**: Enlaces directos a las obras de Chip Huyen, Valliappa Lakshmanan, Nathan Lambert, Michael Albada, Suhas Pai, Chi Wang, Martin Kleppmann, Titus Winters, Daniel Kahneman y William Stanley Jevons.
* 🗺️ **[Guión Maestro del Curso (`GUIÓN_JEV_MASTER.md`)](./GUIÓN_JEV_MASTER.md)** e **[Informe de Estado (`INFORME_DE_ESTADO.md`)](./INFORME_DE_ESTADO.md)**.

---

## 🗂️ Temario Completo y Documentación Técnica por Módulos

### Módulo 1: Introducción y Tesis Central de Jev
* [Introducción: De la Revolución Generativa al Paradigma de Decisión de Jev](./modulo_01_introduccion_y_tesis_central/01_introduccion_gemini_notebook.md)
* [Apartado 1.1: Origen e Historia de TypeSafe AI (Diogo Almeida, InstructGPT y *The Bitterest Lesson*)](./modulo_01_introduccion_y_tesis_central/apartado_1_1_origen_e_historia_typesafe_ai.md)
* [Apartado 1.2: La Trampa del «Carruaje sin Caballos» y el Espejo Retrovisor de McLuhan](./modulo_01_introduccion_y_tesis_central/apartado_1_2_la_trampa_del_carruaje_sin_caballos.md)
* [Apartado 1.3: Definición Formal de un «System One Model» (`Choice`, `Score`, `Noul`)](./modulo_01_introduccion_y_tesis_central/apartado_1_3_definicion_formal_system_one_model.md)

### Módulo 2: Jev en la Evolución General de la IA Generativa
* [Apartado 2.1: De la Predicción de Tokens (GPT-3) a RLHF y los Razonadores Lentos (o1/o3)](./modulo_02_evolucion_ia_generativa/apartado_2_1_de_prediccion_tokens_a_razonadores_lentos.md)
* [Apartado 2.2: El Lugar Arquitectónico de Jev — El Arco Reflejo Periférico (Sherrington)](./modulo_02_evolucion_ia_generativa/apartado_2_2_el_lugar_arquitectonico_de_jev.md)
* [Apartado 2.3: Emergencia Segura, Componibilidad y la IA como Infraestructura Invisible](./modulo_02_evolucion_ia_generativa/apartado_2_3_emergencia_segura_y_componibilidad.md)
* [Apartado 2.4: La Fractura de Producción y el Auge de los Sistemas Compuestos (*Compound AI Systems*)](./modulo_02_evolucion_ia_generativa/apartado_2_4_la_fractura_de_produccion_y_sistemas_compuestos.md)

### Módulo 3: Comparativa Exhaustiva: Jev vs. LLMs Tradicionales
* [Apartado 3.1: Cuadro Comparativo Dimensional en 8 Ejes (KV Cache, JSON y Estructura de Costes)](./modulo_03_comparativa_exhaustiva_jev_vs_llms/apartado_3_1_cuadro_comparativo_dimensional.md)
* [Apartado 3.2: La Paradoja de Jevons Aplicada a la Inteligencia Artificial](./modulo_03_comparativa_exhaustiva_jev_vs_llms/apartado_3_2_la_paradoja_de_jevons_en_ia.md)
* [Apartado 3.3: Matriz de Idoneidad de Casos de Uso y el Patrón Puerta de Confianza](./modulo_03_comparativa_exhaustiva_jev_vs_llms/apartado_3_3_matriz_de_idoneidad_de_casos_de_uso.md)

### Módulo 4: Fundamentos Teóricos Documentados en la Biblioteca O'Reilly
* [Apartado 4.1: Psicología Cognitiva y Sistemas Duales en IA (Daniel Kahneman y Yoshua Bengio)](./modulo_04_fundamentos_teoricos_oreilly/apartado_4_1_psicologia_cognitiva_y_sistemas_duales.md)
* [Apartado 4.2: De RLHF a RLCD — Calibración Probabilística, Brier Score y Honestidad Epistémica](./modulo_04_fundamentos_teoricos_oreilly/apartado_4_2_de_rlhf_a_rlcd_calibracion_y_honestidad.md)
* [Apartado 4.3: Gestión de Incertidumbre y Decisión Bayesiana Bajo Riesgo](./modulo_04_fundamentos_teoricos_oreilly/apartado_4_3_gestion_de_incertidumbre_y_decision_bajo_riesgo.md)
* [Apartado 4.4: Arquitecturas Neuro-Simbólicas y Patrones de Sistemas Compuestos](./modulo_04_fundamentos_teoricos_oreilly/apartado_4_4_arquitecturas_neuro_simbolicas_y_sistemas_compuestos.md)

### Módulo 5: Explicación Práctica de Ventajas y Especificación de Ejemplos Funcionales
* [Apartado 5.0: El «Efecto DeepSeek» del RLCD y la Comoditización de las Decisiones Calibradas](./modulo_05_especificacion_y_ejemplos_practicos/apartado_5_0_el_efecto_deepseek_del_rlcd_y_comoditizacion.md)
* [Apartado 5.1: Anatomía del SDK y las Primitivas Nativas de TypeSafe AI](./modulo_05_especificacion_y_ejemplos_practicos/apartado_5_1_anatomia_del_sdk_y_primitivas_nativas.md)
* [Apartado 5.2: Caso 1 — Fast Router (Enrutamiento Semántico en <80 ms)](./modulo_05_especificacion_y_ejemplos_practicos/apartado_5_2_caso_1_fast_router.md)
* [Apartado 5.3: Caso 2 — Escalado Híbrido (Confidence Gate al 85%)](./modulo_05_especificacion_y_ejemplos_practicos/apartado_5_3_caso_2_escalado_hibrido.md)
* [Apartado 5.4: Caso 3 — Realtime Guardrails (Seguridad y Cumplimiento en Tiempo Real)](./modulo_05_especificacion_y_ejemplos_practicos/apartado_5_4_caso_3_realtime_guardrails.md)
* [Apartado 5.5: Caso 4 — Deterministic Tool Dispatch (Invocación Tipada en Agentes)](./modulo_05_especificacion_y_ejemplos_practicos/apartado_5_5_caso_4_tool_dispatch.md)
* [Apartado 5.6: Caso 5 — Benchmark Cuantitativo Jev vs. LLMs Tradicionales](./modulo_05_especificacion_y_ejemplos_practicos/apartado_5_6_caso_5_benchmark_cuantitativo.md)

### Módulo 6: Conclusiones Arquitectónicas, Síntesis Ejecutiva y Hoja de Ruta
* [Apartado 6.1: Conclusiones Arquitectónicas, Síntesis Integral y Hoja de Ruta en 4 Fases](./modulo_06_conclusiones_y_hoja_de_ruta/apartado_6_1_conclusiones_arquitectonicas_y_hoja_de_ruta.md)

---

## 💻 Ejecución en Local

Si prefieres clonar el repositorio y ejecutar los 5 laboratorios localmente (solo requiere Python 3.9+ estándar):

```bash
git clone https://github.com/0utKast/Jev_AI.git
cd Jev_AI
python3 src/01_fast_router.py
python3 src/02_hybrid_escalation.py
python3 src/03_realtime_guardrail.py
python3 src/04_tool_dispatch.py
python3 src/05_benchmark_eval.py
```
