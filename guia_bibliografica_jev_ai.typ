#set page(
  paper: "a4",
  margin: (top: 2.5cm, bottom: 2.5cm, left: 2.5cm, right: 2.5cm),
  header: align(right)[
    #text(size: 8.5pt, fill: rgb("#555555"), font: "Helvetica Neue")[
      *Jev AI* · Guía de Estudio y Bibliografía Canónica
    ]
  ],
  footer: context align(center)[
    #text(size: 8.5pt, fill: rgb("#777777"), font: "Helvetica Neue")[
      Página #counter(page).display("1 de 1", both: true)
    ]
  ]
)

#set text(
  font: "Georgia",
  size: 10pt,
  lang: "es",
  spacing: 120%
)

#set par(
  justify: true,
  leading: 0.75em
)

// Encabezado Principal
#align(center)[
  #v(0.3cm)
  #text(size: 22pt, weight: "bold", fill: rgb("#1a202c"), font: "Helvetica Neue")[
    Guía Canónica de Bibliografía y Citas de Autoridad
  ]
  #v(3pt)
  #text(size: 12pt, style: "italic", fill: rgb("#2b6cb0"), font: "Helvetica Neue")[
    Fundamentos y Arquitectura de Sistemas con Modelos System One (Jev AI)
  ]
  #v(5pt)
  #text(size: 9pt, fill: rgb("#718096"), font: "Helvetica Neue")[
    Documento Anexo y Guía de Profundización Técnica para la Serie Formativa
  ]
  #v(8pt)
  #line(length: 100%, stroke: 0.8pt + rgb("#cbd5e0"))
  #v(0.3cm)
]

#block(
  fill: rgb("#f7fafc"),
  inset: 11pt,
  radius: 5pt,
  stroke: 0.5pt + rgb("#e2e8f0"),
  [
    #text(weight: "bold", fill: rgb("#2d3748"), font: "Helvetica Neue")[Nota para el lector y estudiante:] \
    Este documento compila de forma sistemática todas las referencias técnicas, libros canónicos de la biblioteca oficial de *O'Reilly Learning*, artículos de investigación fundacional y obras clásicas de economía y neurociencia citadas en los vídeos de la serie. Cada referencia incluye su contexto de aplicación y enlace directo para permitir una consulta rápida de las fuentes primarias.
  ]
)

#v(0.3cm)

== 1. Obras Técnicas Canónicas (Biblioteca O'Reilly Learning)

=== 1.1. Arquitectura de Sistemas de IA, Patrones de Diseño y Agentes

- #link("https://learning.oreilly.com/library/view/-/9781098166298/?orm_source=mcp")[*AI Engineering*] \
  *Autora:* Chip Huyen · *Editorial:* O'Reilly Media, Inc. (2024) \
  *Concepto clave:* Madurez en ingeniería de sistemas de IA mediante distribución eficiente de cargas de trabajo; patrones de enrutamiento (_routing_), cascadas de modelos y gestión de presupuestos de latencia y coste. Citada en el *Módulo 3.3*.

- #link("https://learning.oreilly.com/library/view/-/9798341622654/?orm_source=mcp")[*Generative AI Design Patterns*] \
  *Autores:* Valliappa Lakshmanan y Hannes Hapke · *Editorial:* O'Reilly Media, Inc. (2025) \
  *Concepto clave:* Patrones formales de _Semantic Routing_, _Confidence Gate_ (Puerta de Confianza) y evaluadores en cascada para canalizaciones corporativas. Citada en los *Módulos 2.4 y 3.3*.

- #link("https://learning.oreilly.com/library/view/-/9781098176495/?orm_source=mcp")[*Building Applications with AI Agents*] \
  *Autor:* Michael Albada · *Editorial:* O'Reilly Media, Inc. (2025) \
  *Concepto clave:* Desacople del bucle de decisión de baja latencia del agente respecto a la síntesis generativa; viabilidad y rendimiento de grafos de ejecución en sistemas compuestos. Citada en los *Módulos 2.3 y 2.4*.

- #link("https://learning.oreilly.com/library/view/-/9781098150495/?orm_source=mcp")[*Designing Large Language Model Applications*] \
  *Autor:* Suhas Pai · *Editorial:* O'Reilly Media, Inc. (2025) \
  *Concepto clave:* Descalibración probabilística y sobreconfianza patológica inducidas por el entrenamiento RLHF frente a los requisitos de calibración epistémica. Citada en el *Módulo 3.1*.

- #link("https://learning.oreilly.com/library/view/-/9781804617625/?orm_source=mcp")[*Neuro-Symbolic AI*] \
  *Autores:* Alexiei Dingli y David Farrugia · *Editorial:* Packt / O'Reilly (2023) \
  *Concepto clave:* Integración de la percepción conexionista (Sistema 1) con lógica simbólica y reglas formales de software (Sistema 2). Citada en el *Módulo 4.1*.

=== 1.2. Inferencia, Optimización de Hardware y Servicio de Modelos

- #link("https://learning.oreilly.com/library/view/-/9798341621480/?orm_source=mcp")[*Hands-On LLM Serving and Optimization*] \
  *Autores:* Chi Wang y Peiheng Hu · *Editorial:* O'Reilly Media, Inc. (2026) \
  *Concepto clave:* Restricciones físicas de la decodificación autorregresiva token a token (_memory-bound bottleneck_ por la caché KV) frente a la computación densa en una sola pasada (_Parallel Sampler_). Citada en el *Módulo 3.1*.

- #link("https://learning.oreilly.com/library/view/-/9781098156145/?orm_source=mcp")[*Prompt Engineering for LLMs*] \
  *Autores:* John Berryman y Albert Ziegler · *Editorial:* O'Reilly Media, Inc. (2024) \
  *Concepto clave:* Fragilidad operacional, bloqueos (_deadlocks_) y sobrecostes de forzar esquemas JSON y gramáticas formales sobre modelos autorregresivos. Citada en el *Módulo 3.1*.

- #link("https://learning.oreilly.com/library/view/-/9781098150952/?orm_source=mcp")[*Hands-On Large Language Models*] \
  *Autores:* Jay Alammar y Maarten Grootendorst · *Editorial:* O'Reilly Media, Inc. (2024) \
  *Concepto clave:* Representaciones internas densas en transformadores, cabezales de decisión tipada frente a cabezales de generación textual abierta. Citada en los *Módulos 2.2 y 3.1*.

=== 1.3. Ingeniería de Software Distribuido y Sistemas de Datos

- #link("https://learning.oreilly.com/library/view/-/9781492082781/?orm_source=mcp")[*Software Engineering at Google*] \
  *Autores:* Titus Winters, Tom Manshreck y Hyrum Wright · *Editorial:* O'Reilly Media, Inc. (2020) \
  *Concepto clave:* Presupuestos de latencia en sistemas distribuidos a gran escala; cambio cualitativo cuando una operación cruza el umbral de los 100 ms y se transforma en una primitiva síncrona componible en línea. Citada en el *Módulo 3.2*.

- #link("https://learning.oreilly.com/library/view/-/9781098119058/?orm_source=mcp")[*Designing Data-Intensive Applications, 2nd Edition*] \
  *Autores:* Martin Kleppmann y Chris Riccomini · *Editorial:* O'Reilly Media, Inc. (2026) \
  *Concepto clave:* Principio de estratificación y aislamiento de fallos; descomposición de sistemas complejos en primitivas atómicas fiables, verificables y auditables. Citada en los *Módulos 2.3 y 2.4*.

- #link("https://learning.oreilly.com/library/view/-/9781394297986/?orm_source=mcp")[*Artificial Integrity*] \
  *Autor:* Hamilton Mann · *Editorial:* Wiley / O'Reilly (2024) \
  *Concepto clave:* Aplicación de la Paradoja de Jevons al despliegue masivo de algoritmos de decisión en procesos operativos corporativos. Citada en el *Módulo 3.2*.

- #link("https://learning.oreilly.com/library/view/-/9781633434301/?orm_source=mcp")[*Reinforcement Learning from Human Feedback*] \
  *Autor:* Nathan Lambert · *Editorial:* Manning / O'Reilly (2026) \
  *Concepto clave:* Modelos de recompensa (_reward models_), optimización por preferencia humana y divergencia respecto a la calibración de probabilidades reales. Citada en los *Módulos 1.3, 2.1 y 4.2*.

- #link("https://learning.oreilly.com/library/view/-/9781483298566/?orm_source=mcp")[*Uncertainty in Artificial Intelligence*] \
  *Autores:* Bruce D'Ambrosio, Philippe Smets y Piero Bonissone · *Editorial:* Morgan Kaufmann / O'Reilly \
  *Concepto clave:* Teoría de decisión bayesiana, cuantificación formal de incertidumbre aleatoria y epistémica, y funciones de pérdida bajo riesgo. Citada en el *Módulo 4.3*.

- #link("https://learning.oreilly.com/library/view/-/9798868825989/?orm_source=mcp")[*The DeepSeek Moment: A New Era of Efficiency, Intelligent Design, and Democratization*] \
  *Autores:* Harshad Oak y Monish Darda · *Editorial:* Apress / O'Reilly (2026) \
  *Concepto clave:* Dinámica industrial en la que una disrupción radical en eficiencia fuerza la adopción universal de un nuevo estándar técnico por parte de todas las grandes tecnológicas. Citada en el *Módulo 5.0*.

#pagebreak()

== 2. Investigaciones Fundacionales y Artículos de Pioneros

- *_The Bitter Lesson_ (2019) y _The Bitterest Lesson_ (2026)* \
  *Autores:* Richard Sutton (2019) · Diogo Almeida (TypeSafe AI, 2026) \
  *Aporte:* Formulación de la ley del cómputo general en aprendizaje automático, extendida por Almeida hacia la necesidad de superar la interfaz conversacional de texto para software.

- *_The Shift from Models to Compound AI Systems_ (2024)* \
  *Autores:* Matei Zaharia, Omar Khattab, Lingjiao Chen et al. (BAIR, UC Berkeley / Databricks) \
  *Aporte:* Demostración de que el estado del arte en fiabilidad y coste se alcanza orquestando sistemas compuestos con grafos de código, no aumentando el tamaño del modelo monolítico.

- *_Training language models to follow instructions with human feedback_ [InstructGPT] (2022)* \
  *Autores:* Long Ouyang, Jeff Wu, Xu Chen, Diogo Almeida et al. (OpenAI) \
  *Aporte:* Introducción fundacional de la alineación conversacional mediante RLHF y origen de la segunda ola de la IA generativa.

- *_Language Models are Few-Shot Learners_ [GPT-3] (2020)* \
  *Autores:* Tom Brown, Benjamin Mann, Nick Ryder et al. (OpenAI) \
  *Aporte:* Consolidación del paradigma del simulador de siguiente token y despegue de la computación basada en modelos de lenguaje masivos.

- *_From System 1 Deep Learning to System 2 Deep Learning_ (NeurIPS 2019)* \
  *Autor:* Yoshua Bengio (Premio Turing) \
  *Aporte:* Exposición de los límites del aprendizaje profundo perceptivo y la necesidad de acoplarlo a arquitecturas con capacidades de deliberación y composición.

== 3. Obras Clásicas de Economía, Ciencias Cognitivas y Neurofisiología

- *_The Coal Question_ (1865)* \
  *Autor:* William Stanley Jevons \
  *Aporte:* Formulación original de la Paradoja de Jevons: el incremento drástico de eficiencia en un recurso energético multiplica exponencialmente su consumo agregado total al colonizar nuevas industrias.

- *_Thinking, Fast and Slow_ (2011)* \
  *Autor:* Daniel Kahneman (Premio Nobel de Economía) \
  *Aporte:* Taxonomía dual de procesos cognitivos: Sistema 1 (inmediato, asociativo, intuitivo y de bajo coste energético) y Sistema 2 (deliberativo, secuencial, analítico y lento).

- *_The Integrative Action of the Nervous System_ (1906)* \
  *Autor:* Sir Charles Scott Sherrington (Premio Nobel de Medicina) \
  *Aporte:* Descripción del arco reflejo periférico: procesamiento sensoriomotor local e instantáneo que descarga al córtex cerebral de las reacciones primarias de supervivencia.

- *_Understanding Media: The Extensions of Man_ (1964)* \
  *Autor:* Marshall McLuhan \
  *Aporte:* Concepto del «espejo retrovisor»: tendencia histórica a encorsetar una tecnología disruptiva dentro de los formatos y metáforas de la tecnología a la que reemplaza.

- *_Verification of Forecasts Expressed in Terms of Probability_ [Brier Score] (1950)* \
  *Autor:* Glenn W. Brier \
  *Aporte:* Regla de puntuación estrictamente propia (Brier Score) y descomposición matemática del error en fiabilidad, resolución e incertidumbre.

#v(0.4cm)

== 4. Matriz de Trazabilidad por Módulo y Diapositiva

#table(
  columns: (1.8cm, 4.4cm, 9.5cm),
  stroke: (x, y) => if y == 0 { 0.8pt + rgb("#4a5568") } else { 0.4pt + rgb("#cbd5e0") },
  fill: (col, row) => if row == 0 { rgb("#edf2f7") } else if calc.even(row) { rgb("#f7fafc") } else { none },
  align: (center + horizon, left + horizon, left + horizon),
  [ *Módulo* ], [ *Autores Citados* ], [ *Obra o Concepto Fundamental* ],
  [ 1.1 ], [ Diogo Almeida, Richard Sutton ], [ _The Bitter Lesson_ vs. _The Bitterest Lesson_ ],
  [ 1.2 ], [ Marshall McLuhan, James Watt ], [ El carruaje sin caballos y la metáfora del retrovisor ],
  [ 1.3 ], [ Daniel Kahneman, Nathan Lambert ], [ Sistema 1 vs. Sistema 2 y calibración probabilística RLCD ],
  [ 2.1 ], [ Tom Brown, Diogo Almeida ], [ De la predicción de tokens a InstructGPT y RLHF ],
  [ 2.2 ], [ Charles Sherrington, Jay Alammar ], [ El arco reflejo periférico frente al córtex deliberativo ],
  [ 2.3 ], [ Martin Kleppmann, Michael Albada ], [ Aislamiento de capas, fiabilidad y componibilidad ],
  [ 2.4 ], [ Matei Zaharia, Michael Albada ], [ _Compound AI Systems_ y grafos de flujo en código ],
  [ 3.1 ], [ Chi Wang, John Berryman, Suhas Pai ], [ Límites del KV Cache, fragilidad JSON y sobreconfianza ],
  [ 3.2 ], [ W. S. Jevons, Winters & Wright, H. Mann ], [ Paradoja de Jevons, latencia síncrona y consumo en BBDD ],
  [ 3.3 ], [ Chip Huyen, Lakshmanan & Hapke ], [ Adecuación de modelos y patrón _Confidence Gate_ ],
  [ 4.1 ], [ Daniel Kahneman, Yoshua Bengio, Dingli & Farrugia ], [ Procesamiento dual cognitivo y arquitectura neuro-simbólica ],
  [ 4.2 ], [ Nathan Lambert, Suhas Pai, Glenn W. Brier ], [ Modelo Bradley-Terry, sobreconfianza RLHF, ECE y Brier Score ],
  [ 4.3 ], [ Bruce D'Ambrosio, Chip Huyen ], [ Teoría de decisión, incertidumbre y políticas de abstención ],
  [ 4.4 ], [ Dingli & Farrugia, Lakshmanan & Hapke, M. Albada ], [ Síntesis neuro-simbólica y patrones de sistemas compuestos ],
  [ 5.0 ], [ Harshad Oak, Monish Darda, Chip Huyen ], [ Efecto DeepSeek, comoditización del System One y RouteLLM ],
  [ 5.1 ], [ Chip Huyen, Michael Albada, Jay Alammar, John Berryman ], [ Interfaces tipadas, primitivas Choice, Score, Noul y muestreo O(1) ],
  [ 5.2 ], [ Chip Huyen, Dr. Ali Arsanjani, Chi Wang, Mark Richards ], [ Fast Router, enrutamiento síncrono en Gateway y ahorro del 91% ],
  [ 5.3 ], [ Lakshmanan & Hapke, Chip Huyen, M. Albada ], [ Patrón Confidence Gate (p >= 0.85), triage dual y ahorro del 82% ],
  [ 5.4 ], [ Vaibhav Malik, Sampriti Mitra, Suhas Pai ], [ Realtime Guardrails, cortafuegos síncrono en Ingress y defensa TTFT ],
  [ 5.5 ], [ Michael Albada, John Berryman, Dr. Ali Arsanjani, S. Mitra ], [ Deterministic Tool Dispatch, invocación tipada en ~71 ms y puerta 2FA ],
  [ 5.6 ], [ Chi Wang, Ammar Mohanna, Titus Winters, Sampriti Mitra ], [ Benchmark Cuantitativo (1.000 reqs), percentiles P50/P99 y SLA < 100 ms ],
  [ 6.1 ], [ Chip Huyen, Lakshmanan, M. Albada, N. Lambert, M. Kleppmann ], [ Síntesis ejecutiva del curso, arquitectura unificada y hoja de ruta en 4 fases ]
)
