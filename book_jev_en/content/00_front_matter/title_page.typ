// =============================================================================
// PAGE 2: TITLE PAGE, ARCHITECTURAL BLUEPRINT & OPEN-SOURCE IMPRINT
// =============================================================================
#import "../../templates/styles.typ" as styles

#metadata("Title & Open-Source Imprint")<chapter>

#page(
  paper: "a4",
  margin: (x: 2.0cm, top: 2.0cm, bottom: 2.0cm),
  header: none,
  footer: styles.book-footer(),
  [
    #align(left)[
      #text(font: styles.font-sans, size: 8pt, tracking: 2pt, weight: "bold", fill: styles.color-accent,
            "ANTIGRAVITY AI SYSTEMS ENGINEERING SERIES • VOLUME I")
      #v(8pt)
      #text(font: styles.font-title, size: 2.35em, weight: "bold", fill: styles.color-slate-blue)[
        Jev & System One Architecture
      ]
      #v(5pt)
      #line(length: 28%, stroke: 2pt + styles.color-accent)
      #v(6pt)
      #text(font: styles.font-body, size: 1.12em, fill: styles.color-body.lighten(10%))[
        Sub-100ms Calibrated Decisions, Reinforcement Learning for Calibrated Decisions (RLCD), and the Transition from Conversational LLMs to Native Software Primitives
      ]
      #v(8pt)
      #grid(
        columns: (1fr, auto),
        align(left + horizon)[
          #text(font: styles.font-sans, size: 1.05em, weight: "bold", fill: styles.color-primary, "JESÚS CONDE") \
          #text(font: styles.font-sans, size: 8.2pt, fill: styles.color-body.lighten(25%),
                "Antigravity Engineering Lab • Systems Architecture & Applied Artificial Intelligence")
        ],
        align(right + horizon)[
          #rect(
            fill: styles.color-colab-bg,
            stroke: 0.6pt + styles.color-colab-border,
            radius: 3pt,
            inset: (x: 10pt, y: 6pt),
            [
              #text(font: styles.font-sans, size: 7.4pt, weight: "bold", fill: styles.color-slate-blue, "OFFICIAL GITHUB REPOSITORY") \
              #link("https://github.com/0utKast/Jev_AI")[#text(font: styles.font-code, size: 7.6pt, weight: "bold", fill: styles.color-accent, "github.com/0utKast/Jev_AI")]
            ]
          )
        ]
      )
    ]

    #v(8pt)

    // Frontispiece Placeholder for Google Flow
    #styles.placeholder-figure(
      "Figure 0.0",
      "The Unified Four-Layer Production AI Architecture (System 1 + System 2)",
      "Architectural frontispiece illustrating the four-layer production stack: (1) Synchronous API Ingress Guardrails (<80 ms), (2) Fast Semantic Router & Confidence Gate (tau = 0.85), (3) Deterministic Tool Dispatch with 2FA Safety Gate, and (4) Selective Escalation to System 2 Reasoning LLMs for the 20% complex tail.",
      flow-prompt: "Isometric 3D technical engineering blueprint of a 4-layer software architecture stack. Top layer: API Ingress Shield (70ms). Second layer: Jev System One Confidence Gate routing 80% of traffic down a fast emerald path and 20% to a deep blue System 2 LLM cluster. Crisp vector labels in English, slate and cyan palette.",
      height: 7.4cm,
      aspect: "16:9"
    )

    #v(8pt)

    #styles.kpi-strip((
      ("71.8 ms", "Median Latency (P50)", styles.color-accent-secondary, "Single O(1) GPU forward pass"),
      ("0.0%", "Schema Failure Rate", styles.color-success, "Mathematically typed outputs"),
      ("$0.00", "Output Token Cost", styles.color-accent, "Zero autoregressive generation"),
      ("89.6%", "Net Cost Reduction", styles.color-slate-blue, "Verified across 1,000 prod requests")
    ))

    #v(8pt)

    #line(length: 100%, stroke: 0.5pt + styles.color-border-note)
    #v(6pt)
    #grid(
      columns: (1fr, 1.15fr),
      gutter: 14pt,
      [
        #set par(leading: 0.60em)
        #text(font: styles.font-sans, size: 7.4pt, fill: styles.color-body.lighten(15%))[
          *Published by Antigravity Engineering Lab* \
          First English Edition: October 2026 \
          Companion Video Course: #link("https://www.youtube.com/watch?v=u9ND2Zkd3Kk")[youtube.com/watch?v=u9ND2Zkd3Kk] \
          \
          *Interactive English Google Colab Laboratories:* \
          All 5 zero-install Python standard library notebooks (`notebooks_en/`) and benchmark harnesses are hosted openly at: \
          #link("https://github.com/0utKast/Jev_AI/tree/main/notebooks_en")[github.com/0utKast/Jev_AI/tree/main/notebooks_en]
        ]
      ],
      [
        #set par(leading: 0.58em)
        #text(font: styles.font-sans, size: 7.0pt, fill: styles.color-body.lighten(25%))[
          *Open Access & Scholarly Attribution:* \
          This work is released under Creative Commons CC BY 4.0 (text and diagrams) and the MIT License (Python code and Google Colab laboratories). You are free to share, adapt, and deploy these architectural patterns with attribution to the author and repository. \
          \
          *Trademarks & Technical Literature:* TypeSafe AI and Jev are trademarks of TypeSafe AI, Inc. O'Reilly is a registered trademark of O'Reilly Media, Inc. Citations to works in the O'Reilly Learning library are provided for academic and architectural analysis under fair use.
        ]
      ]
    )
  ]
)
