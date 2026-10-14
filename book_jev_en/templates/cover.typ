// =============================================================================
// BOOK COVER TEMPLATE: JEV & SYSTEM ONE ARCHITECTURE (ENGLISH EDITION)
// Full-Bleed A4 Cover with Flow Art Placeholder & Architectural Framing
// =============================================================================
#import "styles.typ" as styles

#let book-cover(
  title: [JEV & SYSTEM ONE\ ARCHITECTURE],
  subtitle: "Sub-100ms Calibrated Decisions, Reinforcement Learning for Calibrated Decisions (RLCD), and the End of Slow Generative AI in Software Engineering",
  author: "Jesús Conde",
  year: "2026",
  edition: "FIRST ENGLISH EDITION • ANTIGRAVITY AI SYSTEMS SERIES"
) = {
  page(
    paper: "a4",
    margin: 0cm,
    fill: rgb(11, 18, 33),
    header: none,
    footer: none,
    [
      // Outer engineering framing (Calibration Cyan)
      #place(
        top + left,
        dx: 1.0cm,
        dy: 1.0cm,
        rect(
          width: 100% - 2.0cm,
          height: 100% - 2.0cm,
          stroke: 0.8pt + rgb(2, 132, 199, 150)
        )
      )

      // Inner engineering framing (TypeSafe Signal Amber)
      #place(
        top + left,
        dx: 1.25cm,
        dy: 1.25cm,
        rect(
          width: 100% - 2.5cm,
          height: 100% - 2.5cm,
          stroke: 0.4pt + rgb(234, 88, 12, 140)
        )
      )

      // Top Header & Title Block
      #place(
        top + center,
        dy: 2.0cm,
        block(
          width: 82%,
          align(center, [
            #rect(
              fill: styles.color-accent,
              radius: 3pt,
              inset: (x: 12pt, y: 5pt),
              text(font: styles.font-title, size: 8pt, tracking: 2.4pt, weight: "bold", fill: styles.color-white,
                   "ARTIFICIAL INTELLIGENCE & SOFTWARE ARCHITECTURE")
            )
            #v(14pt)

            #text(font: styles.font-title, size: 32pt, weight: "bold", fill: styles.color-white, tracking: 1.4pt, hyphenate: false)[
              #title
            ]
            #v(10pt)

            // Dual-tone divider
            #grid(
              columns: (1fr, auto, 1fr),
              align(horizon, line(length: 100%, stroke: 1.5pt + styles.color-accent)),
              pad(x: 10pt, text(font: styles.font-sans, size: 10pt, fill: rgb(56, 189, 248), "❖")),
              align(horizon, line(length: 100%, stroke: 1.5pt + rgb(56, 189, 248)))
            )
            #v(10pt)

            #par(leading: 0.72em)[
              #text(font: styles.font-title, size: 11.2pt, weight: "medium", fill: rgb(226, 232, 240), subtitle)
            ]
            #v(12pt)
            #text(font: styles.font-title, size: 12pt, weight: "bold", tracking: 3pt, fill: rgb(56, 189, 248), upper(author))
          ])
        )
      )

      // Center Hero Placeholder for Google Flow Cover Illustration
      #place(
        center + horizon,
        dy: 1.8cm,
        block(
          width: 80%,
          [
            #rect(
              width: 100%,
              height: 11.8cm,
              fill: rgb(15, 23, 42),
              stroke: (paint: rgb(56, 189, 248), thickness: 1.2pt, dash: "dashed"),
              radius: 6pt,
              inset: 18pt,
              align(center + horizon)[
                #rect(
                  fill: rgb(2, 132, 199),
                  radius: 3pt,
                  inset: (x: 10pt, y: 4pt),
                  text(font: styles.font-sans, size: 8pt, tracking: 1.5pt, weight: "bold", fill: styles.color-white,
                       "COVER ARTWORK PLACEHOLDER • GOOGLE FLOW [4:3 / FULL BLEED]")
                )
                #v(10pt)
                #text(font: styles.font-title, size: 13pt, weight: "bold", fill: styles.color-white,
                      "The Peripheral Nervous System of Software: System 1 vs. System 2")
                #v(8pt)
                #block(width: 88%)[
                  #set par(leading: 0.65em)
                  #text(font: styles.font-sans, size: 8.5pt, style: "italic", fill: rgb(148, 163, 184))[
                    Flow Prompt: “Ultra-detailed architectural sci-fi semiconductor visualization. In the foreground, a luminous crystalline neural prism labeled ‘JEV SYSTEM ONE (O(1) PARALLEL SAMPLER • 70ms)’ splitting unstructured chaotic data streams into three crisp geometric laser beams of pure typed primitives: Choice (amber), Score (cyan), and Noul (emerald). In the background, a massive slow clockwork gear structure representing traditional System 2 autoregressive LLMs. Deep obsidian blue background (\#0F172A), glowing cyan and amber circuitry, 8K octane render.”
                  ]
                ]
              ]
            )
          ]
        )
      )

      // Bottom Imprint Block
      #place(
        bottom + center,
        dy: -1.4cm,
        block(
          width: 82%,
          align(center, [
            #grid(
              columns: (1fr, 1fr, 1fr),
              gutter: 10pt,
              rect(fill: rgb(15, 23, 42), stroke: 0.5pt + rgb(51, 65, 85), radius: 3pt, inset: 6pt)[
                #text(font: styles.font-sans, size: 7.5pt, weight: "bold", fill: styles.color-accent, "5 GOOGLE COLAB LABS") \
                #text(font: styles.font-sans, size: 7pt, fill: rgb(203, 213, 225), "100% Python Stdlib • Zero Install")
              ],
              rect(fill: rgb(15, 23, 42), stroke: 0.5pt + rgb(51, 65, 85), radius: 3pt, inset: 6pt)[
                #text(font: styles.font-sans, size: 7.5pt, weight: "bold", fill: rgb(56, 189, 248), "O'REILLY LITERATURE") \
                #text(font: styles.font-sans, size: 7pt, fill: rgb(203, 213, 225), "20+ Canonical Works Cited")
              ],
              rect(fill: rgb(15, 23, 42), stroke: 0.5pt + rgb(51, 65, 85), radius: 3pt, inset: 6pt)[
                #text(font: styles.font-sans, size: 7.5pt, weight: "bold", fill: rgb(34, 197, 94), "OPEN REPOSITORY") \
                #text(font: styles.font-sans, size: 7pt, fill: rgb(203, 213, 225), "github.com/0utKast/Jev_AI")
              ]
            )
            #v(8pt)
            #text(font: styles.font-title, size: 8pt, tracking: 1.5pt, fill: rgb(148, 163, 184), [
              #edition • #year
            ])
          ])
        )
      )
    ]
  )
}
