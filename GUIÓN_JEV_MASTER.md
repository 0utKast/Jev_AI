# Guión Maestro de Investigación y Desarrollo: Jev y los Modelos «System One»

---

## Módulo 1: Introducción y Tesis Central de Jev

### 1.1. Origen e Historia de TypeSafe AI
- **El equipo fundador:** Trayectoria de Diogo Almeida (ex-OpenAI, coautor del trabajo pionero en *InstructGPT/RLHF* que sirvió de base a ChatGPT), Erik Gafni y Sasha Sheng.
- **La motivación fundacional:** *«¿Por qué, tras años de modelos sobrehumanos en conversación y billones invertidos, la automatización real del software sigue estancada?»*.
- **La lección más amarga del aprendizaje automático (*The Bitterest Lesson*):** La tesis de Diogo Almeida complementando a Rich Sutton: antes que el cómputo y los algoritmos, lo crucial es seleccionar la **tarea correcta**. El objetivo no es un autocompletado superpotente, sino una toma de decisiones fiable dentro del software.

### 1.2. La Trampa del «Carruaje sin Caballos» (*Horseless Carriage*)
- La tendencia histórica a meter la tecnología disruptiva dentro del molde de lo preexistente (los primeros coches imitaban carruajes de caballos con hueco para el látigo).
- Cómo la IA actual quedó atrapada en el formato de «asistente conversacional humano», generando texto palabra por palabra para tareas donde nadie necesita prosa.

### 1.3. Definición Formal de un «System One Model»
- Diferenciación cognitiva (Daniel Kahneman): juicio rápido, intuitivo, paralelo y de bajo consumo (*Sistema 1*) frente al razonamiento lento, secuencial y deliberado (*Sistema 2*).
- **La renuncia a los strings:** Jev prescinde por completo de la generación de texto en lenguaje natural para convertirse en una función nativa de software: *estado desestructurado de entrada $\rightarrow$ decisiones tipadas y probabilidades calibradas de salida*.

---

## Módulo 2: Jev en la Evolución General de la IA Generativa

### 2.1. Las Cuatro Fases de la IA Moderna
1. **Fase 1 (Preentrenamiento Masivo):** Modelos de lenguaje como predictores de siguiente token (GPT-3, predicción estadística en corpus globales).
2. **Fase 2 (Alineación Conversacional):** InstructGPT, ChatGPT y el predominio de RLHF (alineación con preferencias humanas de redacción, diálogo y empatía).
3. **Fase 3 (Razonamiento en Inferencia / Sistema 2):** Cadenas de pensamiento (*Chain-of-Thought*), computación lenta en tiempo de prueba (*test-time compute*), modelos como o1/o3 guiados por RLVR (*Reinforcement Learning with Verifiable Rewards*).
4. **Fase 4 (La Fractura de Producción y Sistemas Compuestos):** La constatación de que los LLMs monolíticos son un cuello de botella para la ingeniería de software; emergencia de los *Compound AI Systems* (Sistemas Compuestos de IA).

### 2.2. El Nicho Arquitectónico de Jev
- Jev no compite con los modelos de razonamiento profundo (Sistema 2); se sitúa como el **sistema nervioso periférico** y rápido del ecosistema.
- Transición del "chat con esteroides" a las primitivas computacionales seguras: la IA como operador condicional (*«smart if-statement»*).

---

## Módulo 3: Comparativa Exhaustiva: Jev vs. LLMs Tradicionales

### 3.1. Cuadro Comparativo Dimensional

| Dimensión | LLMs Tradicionales (Sistema 2) | Jev / System One |
| :--- | :--- | :--- |
| **Mecanismo de Inferencia** | Descodificación autorregresiva token a token (*KV Cache*) | Muestreo paralelo (*Parallel Sampler*) en una única pasada |
| **Tipo de Salida** | Cadenas de texto arbitrarias (*strings*, Markdown, JSON emulado) | Estructuras de datos estrictamente tipadas (`Choice`, `Score`, `Noul`) |
| **Latencia Típica** | 3.000 ms – 300.000 ms (segundos a minutos) | 70 ms – 500 ms (tiempo real interactivo) |
| **Seguridad de Tipos** | Heurística / Parseo posterior (riesgo de malformación) | Garantía matemática (0% de errores de tipado) |
| **Alucinación** | Alucinación semántica y sintáctica (invención de campos/herramientas) | Alucinación de formato imposible por construcción |
| **Confianza Emitida** | Generalmente sobreconfiado y mal calibrado | Probabilidades calibradas estadísticamente mediante RLCD |
| **Estructura de Costes** | Tokens de entrada estándar; tokens de salida ~5x más caros | Tokens de entrada ultra-económicos ($0.042/MTok); salida **$0** |
| **Algoritmo de Alineación** | RLHF (preferencia humana) / RLVR (verificación formal) | RLCD (*Reinforcement Learning for Calibrated Decisions*) |

### 3.2. La Paradoja de Jevons Aplicada a la Inteligencia Artificial
- Por qué abaratar y acelerar 100x una decisión semántica no reduce el gasto de GPU, sino que desencadena una explosión de decisiones embebidas en bucles de código, bases de datos y microservicios.

### 3.3. Matriz de Idoneidad de Casos de Uso
- **Cuándo usar Jev:** Enrutamiento de peticiones, clasificación multiclase, moderación y guardrails de seguridad, filtrado previo/posterior, evaluación de pasos en agentes, selección de herramientas fijas, control reactivo en tiempo real.
- **Cuándo usar LLMs Convencionales:** Redacción creativa, redacción de documentos largos, síntesis de código nuevo desde cero, deducción matemática paso a paso que requiera *scratchpad* explícito.

---

## Módulo 4: Fundamentos Teóricos Documentados en la Biblioteca O'Reilly

### 4.1. Psicología Cognitiva y Sistemas Duales en IA
- La traslación de Kahneman al diseño de arquitecturas computacionales.
- Consulta formal: interacción entre reflejos inmediatos de reconocimiento de patrones y cálculo simbólico deliberado.

### 4.2. De RLHF a RLCD: Calibración y Honestidad Epistémica
- Por qué RLHF descalibra las probabilidades (fomenta la persuasión y la respuesta segura pero infundada).
- **Referencia Canónica O'Reilly:** [*Reinforcement Learning from Human Feedback* de Nathan Lambert (Manning / O'Reilly, 2026)](https://learning.oreilly.com/library/view/-/9781633434301/?orm_source=mcp), analizando cómo los modelos de recompensa (*reward models*) derivan funciones de valor discriminativas.
- Formulación del objetivo RLCD: minimización del error de calibración esperado (*Expected Calibration Error* - ECE):
  $$\mathbb{P}(\hat{Y} = Y \mid \hat{P} = p) = p, \quad \forall p \in [0, 1]$$

### 4.3. Gestión de Incertidumbre y Decisión Bajo Riesgo
- La toma de decisiones en entornos de producción con garantías operativas.
- **Referencia Canónica O'Reilly:** [*Uncertainty in Artificial Intelligence* de Bruce D'Ambrosio et al. (Morgan Kaufmann / O'Reilly)](https://learning.oreilly.com/library/view/-/9781483298566/?orm_source=mcp), estableciendo las bases probabilísticas que diferencian una decisión informada de un muestreo estocástico.

### 4.4. Arquitecturas Neuro-Simbólicas y Patrones de Sistemas Compuestos
- La superación del monolito: redes neuronales para percepción difusa + lógica simbólica en código para la ejecución exacta.
- **Referencias Canónicas O'Reilly:**
  - [*Generative AI Design Patterns* de Valliappa Lakshmanan & Hannes Hapke (O'Reilly Media, 2025)](https://learning.oreilly.com/library/view/-/9798341622654/?orm_source=mcp): Patrones de *Semantic Routing*, *Guardrails* y *Evaluators*.
  - [*Neuro-Symbolic AI* de Alexiei Dingli & David Farrugia (Packt / O'Reilly, 2023)](https://learning.oreilly.com/library/view/-/9781804617625/?orm_source=mcp): Complementariedad entre conexión neuronal y reglas discretas.
  - [*Building Applications with AI Agents* de Michael Albada (O'Reilly Media, 2025)](https://learning.oreilly.com/library/view/-/9781098176495/?orm_source=mcp): Desacople de latencias en grafos de ejecución agénticos.

---

## Módulo 5: Explicación Práctica de Ventajas y Especificación de Ejemplos Funcionales

### 5.1. Anatomía del SDK y las Primitivas Nativas de TypeSafe
- Funcionamiento del cliente `TypeSafeClient` y su método `system_one(...)`.
- Tipos de preguntas atómicas:
  1. `Choice(pregunta, options=[...])`: Selección categórica con distribución de probabilidad.
  2. `Score(rubrica)`: Calificación continua en un intervalo semántico normalizado.
  3. `Noul(afirmacion)`: Verificación probabilística booleana ($p \in [0, 1]$).

### 5.2. Especificación de los 5 Ejemplos Prácticos de Código

#### Ejemplo 1: `01_fast_router.py` (Enrutador Semántico en <100ms)
- **Escenario:** Pipeline de soporte técnico o atención omnicanal.
- **Mecánica:** Evaluación en paralelo de intención, departamento y prioridad de un ticket entrante.
- **Resultado práctico:** Despacho tipado en tiempo submétrico sin llamadas lentas a LLMs.

#### Ejemplo 2: `02_hybrid_escalation.py` (Arquitectura Dual con Puerta de Confianza)
- **Escenario:** Triage financiero o resolución automatizada de incidencias.
- **Mecánica:** Si $p(\text{confianza}) \ge 0.85$, se ejecuta la acción determinista directa; si $p < 0.85$, se deriva de forma transparente al modelo Sistema 2 (LLM de razonamiento) o a un operador humano.
- **Resultado práctico:** Demostración del ahorro del 80-90% en costes y latencia en el percentil 95.

#### Ejemplo 3: `03_realtime_guardrail.py` (Filtro de Seguridad e Inyección en Tiempo Real)
- **Escenario:** Cortafuegos semántico colocado por delante de un LLM conversacional.
- **Mecánica:** Análisis simultáneo de *jailbreak*, lenguaje tóxico y fuga de datos en <100 ms.
- **Resultado práctico:** Bloqueo instantáneo de peticiones maliciosas sin degradar la respuesta del usuario.

#### Ejemplo 4: `04_tool_dispatch.py` (Despachador Determinista de Herramientas para Agentes)
- **Escenario:** Agente con un catálogo de hasta 50 funciones/APIs disponibles.
- **Mecánica:** Selección matemática garantizada de la herramienta mediante `Choice` sin alucinaciones de nombres.
- **Resultado práctico:** Eliminación del 100% de errores de parseo o herramientas inventadas en bucles agénticos.

#### Ejemplo 5: `05_benchmark_eval.py` (Arnés de Evaluación Empírica Jev vs. LLM)
- **Escenario:** Banco de pruebas cuantitativo con un lote de 20 casos reales.
- **Mecánica:** Ejecución paralela en Jev vs. llamada equivalente a LLM con JSON estructurado.
- **Métricas recogidas:**
  - Latencia P50 y P99.
  - Consumo de tokens (entrada/salida) y coste económico calculado.
  - Tasa de cumplimiento de esquema (0% errores en Jev vs. $X\%$ en LLM).

---

## Módulo 6: Hoja de Ruta de Ejecución y Plan de Trabajo Siguiente

1. **Paso 1:** Desarrollar en detalle el texto expositivo y analítico de los Módulos 1, 2 y 3 (el cuerpo teórico y contextual).
2. **Paso 2:** Profundizar en el Módulo 4 con las citas bibliográficas rigurosas de O'Reilly (fundamentación académica y técnica).
3. **Paso 3:** Configurar el entorno de desarrollo (`requirements.txt`, variables de entorno y harness de emulación/SDK real).
4. **Paso 4:** Implementar de forma interactiva y modular cada uno de los 5 scripts prácticos del Módulo 5.
5. **Paso 5:** Compilar el informe técnico final con los resultados medidos y conclusiones operativas.
