---
name: oreilly-mcp-search
description: Consulta de rigor técnico en el catálogo oficial de O'Reilly Learning mediante el servidor MCP 'oreilly' (herramienta 'search_oreilly_content'). Usar siempre que se requiera investigar libros, vídeos, conferencias, arquitecturas, fundamentos de IA o guías técnicas especializadas.
---

# Habilidad: Búsqueda de Contenidos Técnicos en O'Reilly vía MCP

## 1. Propósito y Carácter de Rigor Técnico
Esta habilidad permite acceder al catálogo de **O'Reilly Learning** dentro del proyecto `Jev_AI` (`/Volumes/MisAppsV/Jev_AI`) ante cualquier solicitud de investigación, análisis del estado del arte, arquitectura técnica, bibliografía de referencia o contraste de fundamentos teóricos sobre sistemas de Inteligencia Artificial (incluyendo arquitecturas Sistema 1 / Sistema 2, modelos discriminativos, RLHF, evaluación de políticas y diseño de sistemas compuestos de IA).

---

## 2. Arquitectura de Conexión MCP en el Proyecto
El proyecto cuenta con la definición del servidor MCP en `.agents/mcp_config.json`:

```json
{
  "mcpServers": {
    "oreilly": {
      "command": "npx",
      "args": [
        "-y",
        "mcp-remote",
        "https://api.oreilly.com/api/search/v1/mcp"
      ]
    }
  }
}
```

- **Servidor MCP:** `oreilly`
- **Herramienta principal:** `search_oreilly_content` (registrada como lazy MCP tool en Antigravity).
- **Flujo de Autorización OAuth:** El cliente `mcp-remote` gestiona la autenticación del usuario mediante el navegador web del sistema. La sesión queda guardada localmente.

---

## 3. Protocolo de Ejecución: `call_mcp_tool`

Para realizar consultas a la biblioteca de O'Reilly, el agente debe invocar la herramienta `call_mcp_tool` con los siguientes parámetros:

```json
{
  "ServerName": "oreilly",
  "ToolName": "search_oreilly_content",
  "Arguments": {
    "query": "palabras clave descriptivas",
    "n_items": 10,
    "content_types": ["books", "videos", "courses", "live-events"],
    "order_by": "date_published",
    "sort_order": "desc"
  }
}
```

### Reglas de Uso de Parámetros:
1. **`query`:** Utilizar términos técnicos precisos en inglés o español técnico ("System 1 AI", "neural network decision engines", "reinforcement learning human feedback", "semantic router guardrails"). Evitar preguntas conversacionales largas.
2. **`content_types`:** Filtrar según el formato requerido:
   - `books`: Obras y manuales técnicos canónicos (O'Reilly, Packt, Manning, Pearson, Wiley, No Starch, Apress).
   - `videos` / `courses`: Cursos y explicaciones paso a paso.
   - `live-events`: Sesiones y talleres en directo.
   - `interactive`: Escenarios prácticos y sandboxes.
3. **`order_by` / `sort_order`:** Para las publicaciones más recientes sobre el tema, usar `order_by: "date_published"` y `sort_order: "desc"`. Para relevancia general, omitir o usar `relevance`.
4. **`publisher_filter` / `author_filter`:** Filtrar por autores canónicos o editoriales de prestigio cuando se busque un enfoque formal específico.

---

## 4. Estándar de Referenciación y Salida
En los informes y notas de investigación:
1. **Enlaces Clicables:** Citar siempre la URL devuelta por el MCP (manteniendo el parámetro `?orm_source=mcp`).
2. **Ficha Bibliográfica:** Incluir Título, Autores, Editorial, Formato y Año de publicación.
3. **URN Canónico:** Referenciar el `ourn` o ISBN cuando se documenten fuentes para trazabilidad técnica.
