// =============================================================================
// APPENDIX B: ANNOTATED O'REILLY BIBLIOGRAPHY & CANONICAL REFERENCES
// =============================================================================
#import "../../templates/styles.typ" as styles

#metadata("Appendix B: Annotated O'Reilly Bibliography")<chapter>

#let bib-entry(title, authors, publisher, year, description, url-link) = {
  block(
    width: 100%,
    breakable: false,
    fill: styles.color-bg-note,
    inset: (x: 9pt, y: 6pt),
    stroke: (left: 3pt + styles.color-slate-blue, rest: 0.5pt + styles.color-border-note),
    radius: (right: 3pt),
    [
      #text(font: styles.font-sans, weight: "bold", size: 8.4pt, fill: styles.color-primary, title) \
      #text(font: styles.font-sans, size: 7.4pt, style: "italic", fill: styles.color-slate-blue, [#authors — #publisher (#year)])
      #v(2pt)
      #set par(leading: 0.58em)
      #text(font: styles.font-body, size: 7.7pt, fill: styles.color-body, description)
      #v(2pt)
      #link(url-link)[#text(font: styles.font-sans, size: 7.0pt, weight: "bold", fill: styles.color-accent, "Explore on O'Reilly Learning →")]
    ]
  )
}

// =============================================================================
// PAGE 14: O'REILLY LEARNING — AI ARCHITECTURE, AGENTS & SERVING
// =============================================================================
#align(left)[
  #rect(
    fill: styles.color-accent,
    radius: 3pt,
    inset: (x: 10pt, y: 4pt),
    text(font: styles.font-sans, size: 7.8pt, tracking: 2pt, weight: "bold", fill: styles.color-white, "APPENDIX B • BIBLIOGRAPHY & AUTHORITY CITATIONS")
  )
  #v(6pt)
  #text(font: styles.font-title, size: 1.85em, weight: "bold", fill: styles.color-slate-blue)[
    Annotated O'Reilly Bibliography & Canonical References
  ]
  #v(3pt)
  #line(length: 30%, stroke: 2pt + styles.color-accent)
]

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 11pt,
  [
    #bib-entry(
      "AI Engineering",
      "Chip Huyen",
      "O'Reilly Media, Inc.",
      "2024",
      "Foundational guide on workload routing, model cascades, latency/cost budgets, and selective abstention policies in production AI systems.",
      "https://learning.oreilly.com/library/view/-/9781098166298/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Generative AI Design Patterns",
      "Valliappa Lakshmanan & Hannes Hapke",
      "O'Reilly Media, Inc.",
      "2025",
      "Formalizes the Semantic Router, Confidence Gate, Guardrails, and cascaded evaluation patterns for enterprise AI pipelines.",
      "https://learning.oreilly.com/library/view/-/9798341622654/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Reinforcement Learning from Human Feedback",
      "Nathan Lambert",
      "Manning / O'Reilly",
      "2026",
      "Mathematical analysis of Bradley-Terry reward models, RLHF preference optimization, and why conversational alignment diverges from Bayesian calibration.",
      "https://learning.oreilly.com/library/view/-/9781633434301/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Building Applications with AI Agents",
      "Michael Albada",
      "O'Reilly Media, Inc.",
      "2025",
      "Decoupling low-latency agentic decision loops from heavy generative synthesis; deterministic tool dispatch in compound execution graphs.",
      "https://learning.oreilly.com/library/view/-/9781098176495/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Designing Large Language Model Applications",
      "Suhas Pai",
      "O'Reilly Media, Inc.",
      "2025",
      "Examines probabilistic miscalibration, sycophancy, and pathological overconfidence induced by conversational RLHF.",
      "https://learning.oreilly.com/library/view/-/9781098150495/?orm_source=mcp"
    )
  ],
  [
    #bib-entry(
      "Hands-On LLM Serving and Optimization",
      "Chi Wang & Peiheng Hu",
      "O'Reilly Media, Inc.",
      "2026",
      "Dissects the physical memory-bandwidth bottleneck of the KV Cache during token-by-token autoregressive decoding versus parallel forward passes.",
      "https://learning.oreilly.com/library/view/-/9798341621480/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Prompt Engineering for LLMs",
      "John Berryman & Albert Ziegler",
      "O'Reilly Media, Inc.",
      "2024",
      "Analyzes latency degradation, deadlocks, and residual syntax failures when forcing structured JSON schemas onto generative language models.",
      "https://learning.oreilly.com/library/view/-/9781098156145/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Neuro-Symbolic AI",
      "Alexiei Dingli & David Farrugia",
      "Packt / O'Reilly",
      "2023",
      "Synthesizes connectionist neural perception (System 1) with discrete symbolic logic and formal software contracts (System 2).",
      "https://learning.oreilly.com/library/view/-/9781804617625/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Agentic Architectural Patterns for Multi-Agent Systems",
      "Dr. Ali Arsanjani & Juan Pablo Bustos",
      "Packt / O'Reilly",
      "2026",
      "Low-latency semantic routing and orchestration primitives for delegating tasks across multi-agent topologies.",
      "https://learning.oreilly.com/library/view/-/9781806029570/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "AI-Native LLM Security",
      "Vaibhav Malik, Ken Huang & Ads Dawson",
      "Packt / O'Reilly",
      "2025",
      "Perimeter defense against prompt injection, DAN jailbreaks, and accidental PII credential exfiltration in real time.",
      "https://learning.oreilly.com/library/view/-/9781836203759/?orm_source=mcp"
    )
  ]
)

#pagebreak()

// =============================================================================
// PAGE 15: DISTRIBUTED SYSTEMS, UNCERTAINTY & FOUNDATIONAL PAPERS
// =============================================================================

== Distributed Systems, Uncertainty Theory, and Classical Works

#grid(
  columns: (1fr, 1fr),
  gutter: 11pt,
  [
    #bib-entry(
      "Designing Data-Intensive Applications, 2nd Edition",
      "Martin Kleppmann & Chris Riccomini",
      "O'Reilly Media, Inc.",
      "2026",
      "Principles of fault isolation, composability, and decomposing complex distributed systems into auditable, reliable atomic primitives.",
      "https://learning.oreilly.com/library/view/-/9781098119058/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Software Engineering at Google",
      "Titus Winters, Tom Manshreck & Hyrum Wright",
      "O'Reilly Media, Inc.",
      "2020",
      "Latency budgets in distributed microservices and how sub-100ms calls transition from heavy asynchronous jobs to inline synchronous primitives.",
      "https://learning.oreilly.com/library/view/-/9781492082781/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "System Design for the LLM Era",
      "Sampriti Mitra",
      "Packt / O'Reilly",
      "2026",
      "API Ingress gateway architectures and sub-100ms security interceptors designed to preserve Time to First Token (TTFT).",
      "https://learning.oreilly.com/library/view/-/9781807789930/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Uncertainty in Artificial Intelligence",
      "Bruce D'Ambrosio, Philippe Smets & Piero Bonissone",
      "Morgan Kaufmann / O'Reilly",
      "1991",
      "Classical Bayesian decision theory, aleatoric vs. epistemic uncertainty, and expected loss minimization under asymmetric risk.",
      "https://learning.oreilly.com/library/view/-/9781483298566/?orm_source=mcp"
    )
  ],
  [
    #bib-entry(
      "The DeepSeek Moment: Efficiency & Intelligent Design",
      "Harshad Oak & Monish Darda",
      "Apress / O'Reilly",
      "2026",
      "Analyzes how radical architectural efficiency forces industry-wide commoditization across all major AI laboratories.",
      "https://learning.oreilly.com/library/view/-/9798868825989/?orm_source=mcp"
    )
    #v(5pt)
    #bib-entry(
      "Fundamentals of Software Architecture, 2nd Edition",
      "Mark Richards & Neal Ford",
      "O'Reilly Media, Inc.",
      "2025",
      "Architectural fitness functions, synchronous latency ceilings, and decoupled gateway orchestration.",
      "https://learning.oreilly.com/library/view/-/9781098175504/?orm_source=mcp"
    )
    #v(5pt)
    #styles.concept-note(
      title: "Foundational Papers & Classical Works Cited",
      tag: "PRIMARY SCIENTIFIC LITERATURE",
      accent: styles.color-accent,
      [
        • *D. Almeida (2026):* “The Bitterest Lesson & System One Models” (TypeSafe AI). \
        • *R. Sutton (2019):* “The Bitter Lesson”. \
        • *L. Ouyang, J. Wu, D. Almeida et al. (2022):* “InstructGPT” (OpenAI). \
        • *M. Zaharia, O. Khattab et al. (2024):* “The Shift from Models to Compound AI Systems” (BAIR). \
        • *D. Kahneman (2011):* “Thinking, Fast and Slow”. \
        • *W. S. Jevons (1865):* “The Coal Question”. \
        • *C. S. Sherrington (1906):* “The Integrative Action of the Nervous System”. \
        • *M. McLuhan (1964):* “Understanding Media”. \
        • *G. W. Brier (1950):* “Verification of Forecasts Expressed in Terms of Probability”.
      ]
    )
  ]
)
