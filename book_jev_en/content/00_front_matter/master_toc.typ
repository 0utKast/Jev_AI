// =============================================================================
// PAGE 3: MASTER TABLE OF CONTENTS & ECOSYSTEM ARCHITECTURE
// =============================================================================
#import "../../templates/styles.typ" as styles

#metadata("Master Table of Contents")<chapter>

#page(
  paper: "a4",
  margin: (x: 2.0cm, top: 1.8cm, bottom: 2.0cm),
  fill: styles.color-bg-note,
  header: none,
  footer: styles.book-footer(),
  [
    #align(center)[
      #rect(
        fill: styles.color-accent,
        radius: 3pt,
        inset: (x: 8pt, y: 3pt),
        text(font: styles.font-sans, size: 7.2pt, tracking: 2.5pt, weight: "bold", fill: styles.color-white, "ARCHITECTURAL BLUEPRINT & CONTENTS")
      )
      #v(5pt)
      #text(font: styles.font-title, size: 1.9em, weight: "bold", fill: styles.color-slate-blue, "Master Table of Contents & Learning Ecosystem")
      #v(3pt)
      #line(length: 24%, stroke: 1.5pt + styles.color-accent)
    ]
    #v(8pt)

    #grid(
      columns: (1.08fr, 0.04fr, 1.88fr),
      gutter: 10pt,
      [
        // Left Column: The Learning Triad & GitHub / Colab Access
        #text(font: styles.font-title, size: 10pt, weight: "bold", fill: styles.color-slate-blue, "From Conversational Prose to Typed Decisions")
        #v(4pt)
        #par(leading: 0.62em)[
          #text(font: styles.font-body, size: 8.4pt, fill: styles.color-body)[
            For years, software engineering attempted to force autoregressive text generators into backend control loops—paying multi-second latencies and risking broken JSON schemas simply to execute a conditional branch.
          ]
        ]
        #v(4pt)
        #par(leading: 0.62em)[
          #text(font: styles.font-body, size: 8.4pt, fill: styles.color-body)[
            This book documents the architectural paradigm introduced by *Jev* (*TypeSafe AI*): renouncing natural language output to deliver sub-100ms, mathematically typed, and statistically calibrated *System One* decisions via *RLCD* (*Reinforcement Learning for Calibrated Decisions*).
          ]
        ]
        #v(8pt)
        #styles.pull-quote(
          "Before scale and compute comes a deeper imperative: selecting the right task formulation. Software does not need a poet in its inner loop; it needs a calibrated decision primitive.",
          author: "The Bitterest Lesson of Machine Learning",
          width: 100%
        )
        #v(8pt)
        #styles.concept-note(
          title: "5 English Google Colab Labs (Zero Install)",
          tag: "PRACTICAL COMPANION",
          accent: styles.color-accent-secondary,
          [
            Every practical pattern in Chapter 5 includes an English Google Colab notebook built 100% with the Python standard library. Access all notebooks at: \
            #link("https://github.com/0utKast/Jev_AI/tree/main/notebooks_en")[*github.com/0utKast/Jev_AI/tree/main/notebooks_en*]
          ]
        )
        #v(6pt)
        #styles.concept-note(
          title: "Canonical O'Reilly Literature",
          tag: "THEORETICAL RIGOR",
          accent: styles.color-slate-blue,
          [
            Grounded in 20+ authoritative treatises from O'Reilly Learning—including works by Chip Huyen, Valliappa Lakshmanan, Nathan Lambert, Michael Albada, Suhas Pai, Chi Wang, and Martin Kleppmann.
          ]
        )
      ],
      [
        #align(center)[
          #line(start: (0pt, 0pt), end: (0pt, 610pt), stroke: 0.5pt + styles.color-border-note.darken(10%))
        ]
      ],
      [
        // Right Column: Structured Chapters & Appendices
        #let toc-entry(num, title, desc, pg) = {
          grid(
            columns: (1fr, auto),
            gutter: 6pt,
            align(left + bottom)[
              #text(font: styles.font-sans, size: 8.2pt, weight: "bold", fill: styles.color-primary, num + " " + title)
              #box(width: 1fr, repeat(text(fill: styles.color-border-note.darken(15%), ".")))
              #if desc != "" [ \ #text(font: styles.font-sans, size: 7.1pt, style: "italic", fill: styles.color-body.lighten(25%), desc) ]
            ],
            align(right + bottom)[
              #text(font: styles.font-sans, size: 8.2pt, weight: "bold", fill: styles.color-accent, pg)
            ]
          )
          v(4.5pt)
        }

        #text(font: styles.font-sans, size: 8.4pt, weight: "bold", fill: styles.color-slate-blue, "PART I: FOUNDATIONS & THE SYSTEM ONE PARADIGM")
        #v(2pt)
        #line(length: 100%, stroke: 0.5pt + styles.color-accent.lighten(40%))
        #v(3pt)
        #toc-entry("0.0", "Foreword: Shooting Stars & The Generative Paradox", "Discerning enduring architectural shifts; the 5 English Colab labs", "4")
        #toc-entry("Ch. 1", "The Origins of TypeSafe AI & System One Models", "Diogo Almeida, InstructGPT, The Bitterest Lesson, McLuhan's Horseless Carriage, and O(1) Parallel Sampling (Choice, Score, Noul)", "6")

        #v(4pt)
        #text(font: styles.font-sans, size: 8.4pt, weight: "bold", fill: styles.color-slate-blue, "PART II: EVOLUTION & COMPARATIVE ARCHITECTURE")
        #v(2pt)
        #line(length: 100%, stroke: 0.5pt + styles.color-accent.lighten(40%))
        #v(3pt)
        #toc-entry("Ch. 2", "Jev in the Evolution of Modern AI & Compound Systems", "From GPT-3 and RLHF to o1/o3 slow reasoners; Sherrington's peripheral reflex arc; Kleppmann's layering principle; Compound AI Systems", "13")
        #toc-entry("Ch. 3", "Exhaustive Comparison: Jev vs. Traditional LLMs", "8-dimensional matrix (KV-Cache bottleneck, JSON fragility, token economics); Jevons Paradox in software; Confidence Gate suitability matrix", "17")

        #v(4pt)
        #text(font: styles.font-sans, size: 8.4pt, weight: "bold", fill: styles.color-slate-blue, "PART III: THEORETICAL SUBSTRATE (O'REILLY LIBRARY)")
        #v(2pt)
        #line(length: 100%, stroke: 0.5pt + styles.color-accent.lighten(40%))
        #v(3pt)
        #toc-entry("Ch. 4", "Cognitive Dual Systems, RLCD Calibration & Risk", "Kahneman & Bengio (System 1/2); Nathan Lambert on RLHF vs. RLCD & Brier Score; Bayesian decision under risk; Neuro-Symbolic transducers", "21")

        #v(4pt)
        #text(font: styles.font-sans, size: 8.4pt, weight: "bold", fill: styles.color-slate-blue, "PART IV: PRODUCTION PATTERNS, COLAB LABS & ROADMAP")
        #v(2pt)
        #line(length: 100%, stroke: 0.5pt + styles.color-accent.lighten(40%))
        #v(3pt)
        #toc-entry("Ch. 5", "The DeepSeek Effect of RLCD & 5 Practical Colab Labs", "Commoditization of calibrated decisions (OpenJev, RouteLLM, Prompt-Guard); SDK anatomy; Labs 1–5 (Fast Router, Confidence Gate, Guardrails, Tool Dispatch, 1,000-Req Benchmark)", "25")
        #toc-entry("Ch. 6", "Architectural Conclusions & 4-Phase Adoption Roadmap", "Unified 4-layer production blueprint, consolidated Colab telemetry, and step-by-step migration guide to eliminate generative debt", "32")

        #v(4pt)
        #text(font: styles.font-sans, size: 8.4pt, weight: "bold", fill: styles.color-slate-blue, "PART V: APPENDICES & CANONICAL BIBLIOGRAPHY")
        #v(2pt)
        #line(length: 100%, stroke: 0.5pt + styles.color-accent.lighten(40%))
        #v(3pt)
        #toc-entry("App. A", "English Google Colab Laboratories & Repository Guide", "Direct 1-click Colab URLs, local CLI execution, and testing harness", "34")
        #toc-entry("App. B", "Annotated O'Reilly Bibliography & Authority Citations", "Complete catalog of O'Reilly books, foundational papers, and classical works", "35")
      ]
    )
  ]
)
