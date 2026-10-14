// =============================================================================
// VECTOR SCHEMATICS & ARCHITECTURAL DIAGRAMS (NATIVE TYPST)
// Crisp vector diagrams for System 1 Parallel Sampling & Production Stacks
// =============================================================================
#import "styles.typ" as styles

// 1. Autoregressive KV-Cache Loop O(N) vs. Jev Parallel Sampler O(1)
#let sampler-comparison-diagram() = {
  block(
    width: 100%,
    breakable: false,
    rect(
      width: 100%,
      fill: styles.color-bg-note,
      stroke: 0.5pt + styles.color-border-note,
      inset: (x: 10pt, y: 8pt),
      radius: 4pt,
      [
        #align(center)[
          #text(font: styles.font-title, weight: "bold", size: 8.5pt, fill: styles.color-slate-blue,
                "ARCHITECTURAL SCHEMATIC: AUTOREGRESSIVE KV-CACHE LOOP O(N) VS. JEV PARALLEL SAMPLER O(1)")
        ]
        #v(5pt)
        // Top track: System 2 LLM
        #grid(
          columns: (92pt, 1fr, auto, 1fr, auto, 1fr, auto, 1.1fr),
          gutter: 3pt,
          align(left + horizon)[
            #text(font: styles.font-sans, size: 7pt, weight: "bold", fill: styles.color-warning, "SYSTEM 2 LLM\n(1,500–3,000 ms)")
          ],
          rect(fill: styles.color-warning.lighten(88%), stroke: 0.5pt + styles.color-warning, radius: 2pt, inset: 4pt, align(center)[
            #text(font: styles.font-code, size: 6.5pt, weight: "bold", fill: styles.color-warning.darken(20%), "Token 1: \"{\"") \
            #text(font: styles.font-sans, size: 5.8pt, fill: styles.color-body, "KV-Cache Read #1")
          ]),
          align(center + horizon, text(size: 7pt, fill: styles.color-warning, "▶")),
          rect(fill: styles.color-warning.lighten(88%), stroke: 0.5pt + styles.color-warning, radius: 2pt, inset: 4pt, align(center)[
            #text(font: styles.font-code, size: 6.5pt, weight: "bold", fill: styles.color-warning.darken(20%), "Token 2: \"dept\"") \
            #text(font: styles.font-sans, size: 5.8pt, fill: styles.color-body, "KV-Cache Read #2")
          ]),
          align(center + horizon, text(size: 7pt, fill: styles.color-warning, "▶")),
          rect(fill: styles.color-warning.lighten(88%), stroke: 0.5pt + styles.color-warning, radius: 2pt, inset: 4pt, align(center)[
            #text(font: styles.font-code, size: 6.5pt, weight: "bold", fill: styles.color-warning.darken(20%), "... 50 Loops ...") \
            #text(font: styles.font-sans, size: 5.8pt, fill: styles.color-body, "Memory-Bound Stall")
          ]),
          align(center + horizon, text(size: 7pt, fill: styles.color-warning, "▶")),
          rect(fill: styles.color-warning.lighten(80%), stroke: 0.5pt + styles.color-warning, radius: 2pt, inset: 4pt, align(center)[
            #text(font: styles.font-sans, size: 6.5pt, weight: "bold", fill: styles.color-warning.darken(25%), "Regex / JSON Parse") \
            #text(font: styles.font-sans, size: 5.8pt, fill: styles.color-body, "4.5% Schema Failure")
          ])
        )
        #v(5pt)
        #line(length: 100%, stroke: (paint: styles.color-border-note, dash: "dashed", thickness: 0.5pt))
        #v(5pt)
        // Bottom track: System 1 Jev
        #grid(
          columns: (92pt, 1.2fr, auto, 1.5fr, auto, 1.3fr),
          gutter: 4pt,
          align(left + horizon)[
            #text(font: styles.font-sans, size: 7pt, weight: "bold", fill: styles.color-success.darken(10%), "JEV SYSTEM ONE\n(70 ms • O(1))")
          ],
          rect(fill: styles.color-slate-blue, radius: 2pt, inset: 4.5pt, align(center)[
            #text(font: styles.font-sans, size: 6.5pt, weight: "bold", fill: styles.color-white, "UNSTRUCTURED INPUT") \
            #text(font: styles.font-sans, size: 5.8pt, fill: styles.color-colab-bg, "Single Forward Pass")
          ]),
          align(center + horizon, text(size: 8pt, fill: styles.color-accent-secondary, "▶")),
          rect(fill: styles.color-accent-secondary, radius: 2pt, inset: 4.5pt, align(center)[
            #text(font: styles.font-sans, size: 6.5pt, weight: "bold", fill: styles.color-white, "PARALLEL SAMPLER + RLCD HEADS") \
            #text(font: styles.font-sans, size: 5.8pt, fill: styles.color-white, "Simultaneous Choice + Score + Noul")
          ]),
          align(center + horizon, text(size: 8pt, fill: styles.color-success, "▶")),
          rect(fill: styles.color-success.lighten(86%), stroke: 0.6pt + styles.color-success, radius: 2pt, inset: 4.5pt, align(center)[
            #text(font: styles.font-sans, size: 6.5pt, weight: "bold", fill: styles.color-success.darken(25%), "NATIVE TYPED OBJECT") \
            #text(font: styles.font-sans, size: 5.8pt, fill: styles.color-body, "0 Output Tokens • 0.0% Error")
          ])
        )
      ]
    )
  )
}
