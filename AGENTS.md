# Directrices del Proyecto Jev_AI

## Misión del Proyecto
Este espacio de trabajo está dedicado a la investigación técnica profunda, análisis de arquitectura, fundamentos teóricos y experimentación en torno a **Jev** (el modelo "System One" no generativo desarrollado por **TypeSafe AI**), así como a su posicionamiento frente a la evolución de la IA generativa convencional (LLMs autorregresivos, cadenas de razonamiento lento y sistemas compuestos).

---

## Uso del Servidor MCP de O'Reilly
Este espacio de trabajo dispone de conexión al servidor MCP oficial de **O'Reilly Learning** (`oreilly`) configurado en `.agents/mcp_config.json`.

### Instrucciones para el Agente:
- **Consulta de Fundamentos y Rigor Técnico:** Cuando se requiera analizar la base teórica de los sistemas de decisión rápida, enrutamiento semántico, modelos de recompensa (RLHF), guardrails de baja latencia o arquitecturas neuro-simbólicas, consultar activamente la biblioteca de O'Reilly mediante la herramienta lazy `search_oreilly_content` del servidor `oreilly`.
- **Habilidad Asociada:** Aplicar las directrices de `.agents/skills/oreilly-mcp-search/SKILL.md`.
- **Enlaces Clicables:** Proporcionar siempre enlaces Markdown clicables con los URLs devueltos por el MCP (manteniendo `?orm_source=mcp`).
- **Referencias Formales:** Citar a autores canónicos y obras reconocidas para fundamentar las decisiones y análisis de diseño de sistemas de IA.

---

## Líneas de Investigación Clave
1. **Paradigma "System 1" vs. "System 2":** Diferencias entre inferencia ultrarrápida estructurada (decisión, clasificación, probabilidad directa) y generación autorregresiva de texto token a token.
2. **Arquitecturas Híbridas y Compuestas:** Integración de Jev como capa de routing, filtrado, guardrail o evaluación previa/posterior a LLMs generativos.
3. **Métricas de Rendimiento:** Latencia (decisión en milisegundos), determinismo de salida (JSON/tipos seguros) y optimización de costes computacionales.
4. **Orígenes y Fundamentos:** Vínculos con modelos de recompensa de RLHF, clasificadores densos, embeddings y toma de decisiones en tiempo real.
