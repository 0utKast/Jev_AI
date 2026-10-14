// =============================================================================
// SECTION 1.1: ORIGIN AND HISTORY OF TYPESAFE AI (PAGES 7 & 8)
// Layout Variants: Page 7 = Archetype C (Asymmetric Right Sidebar 1.18fr / 0.82fr)
//                  Page 8 = Archetype D (Top Prose + Full Table + Bottom Split)
// =============================================================================
#import "../../templates/styles.typ" as styles
#import "../../templates/tables.typ" as tables

// =============================================================================
// PAGE 7 (ARCHETYPE C): ASYMMETRIC RIGHT SIDEBAR (1.18fr Prose / 0.82fr Portrait)
// =============================================================================
== 1.1 Origin and History of TypeSafe AI: From InstructGPT to Stealth Innovation

#grid(
  columns: (1.18fr, 0.82fr),
  gutter: 13pt,
  [
    #styles.drop-cap("T", [
      o comprehend why the release of *Jev* has generated such intense anticipation across the artificial intelligence and systems engineering communities, we must travel back to the origins of its founding company, *TypeSafe AI*, and examine the scientific trajectory of its principal founder, *Diogo Almeida*. At the beginning of this decade, inside the research laboratories of OpenAI, Almeida belonged to the core team of researchers that solved one of deep learning’s most formidable obstacles.
    ])
    #v(4pt)
    #par[
      Early foundation models such as *GPT-3* (2020) were extraordinary statistical simulators of internet text, yet they were chaotic, unpredictable, and notoriously difficult to control inside real-world applications. If a user asked a direct question, a raw base model might simply hallucinate three more questions rather than providing a useful answer—acting as an untamed, hyper-scale autocomplete engine.
    ]
    #v(4pt)
    #par[
      Almeida co-authored the landmark 2022 paper *Training language models to follow instructions with human feedback* (*InstructGPT*), which introduced large-scale *Reinforcement Learning from Human Feedback (RLHF)*. That breakthrough became the direct scientific nucleus that brought *ChatGPT* to life and ignited the global generative revolution we inhabit today.
    ]
    #v(4pt)
    #par[
      Yet, after the initial euphoria subsided, Almeida observed a troubling structural paradox. Although conversational models displayed astonishing rhetorical eloquence and enterprises poured astronomical capital into AI initiatives, *real backend software automation remained stubbornly stagnant*. Corporations now possessed polite conversational assistants, but their underlying transactional databases, cloud microservices, and operational pipelines continued running on brittle, hardcoded legacy rules.
    ]
    #v(4pt)
    #par[
      To resolve this impasse, in 2024 Diogo Almeida founded *TypeSafe AI* alongside *Erik Gafni* and *Sasha Sheng*. Operating for two years in stealth mode backed by *\$40 million in venture capital*, their mission was not to build another chatbot to compete with ChatGPT, but to engineer a fundamentally different breed of intelligence—designed from first principles to live inside source code.
    ]
  ],
  [
    #styles.placeholder-figure(
      "Figure 1.1",
      "From OpenAI's InstructGPT (2022) to TypeSafe AI's Jev (2026)",
      "Historical lineage showing how Diogo Almeida's work on InstructGPT/RLHF solved human-facing dialogue, while exposing the 'Production Chasm' in backend systems that led to the founding of TypeSafe AI with Erik Gafni and Sasha Sheng.",
      flow-prompt: "Vertical architectural timeline infographic (3:4 portrait). Top node: '2020 GPT-3 Base Simulator (Raw Token Prediction)'. Middle node: '2022 InstructGPT & RLHF (Diogo Almeida et al. — Conversational Alignment for Humans)'. Bottom glowing node: '2024–2026 TypeSafe AI & Jev (RLCD — Calibrated Sub-100ms Typed Decisions for Software)'. Crisp engineering style, dark slate and cyan.",
      height: 8.4cm,
      aspect: "3:4"
    )
    #v(5pt)
    #styles.concept-note(
      title: "InstructGPT & The RLHF Paradox",
      tag: "HISTORICAL MILESTONE",
      accent: styles.color-accent-secondary,
      [
        Co-authored by Ouyang, Wu, Almeida et al. (2022), InstructGPT aligned LLMs with human conversational preferences. However, optimizing for human approval inadvertently trained models to be verbose, sycophantic, and poorly calibrated for machine-to-machine execution.
      ]
    )
  ]
)

#v(6pt)

#styles.pull-quote(
  "If language models have been superhuman at conversation for years and billions of dollars have been invested, why has real software automation still not arrived?",
  author: "Diogo Almeida, Co-Founder of TypeSafe AI & Co-Author of InstructGPT"
)

#pagebreak()

// =============================================================================
// PAGE 8 (ARCHETYPE D): TOP 2-COL PROSE + FULL TABLE + BOTTOM SPLIT
// =============================================================================

== The Bitter Lesson (Sutton) vs. The Bitterest Lesson (Almeida)

#grid(
  columns: (1fr, 1fr),
  gutter: 13pt,
  [
    #par[
      Why did conversational models fail to colonize the inner loops of enterprise software? The answer lies in the physical constraints of distributed computing. Enterprise software does not operate by reading paragraphs of prose. Transactional microservices, event streams, and cloud gateways require responses in *under 100 milliseconds*, strictly typed data payloads, and deterministic execution branches. Forcing a conventional language model into those loops introduces multi-second delays, continuous JSON formatting crashes, and un-auditable hallucinations.
    ]
    #v(4pt)
    #par[
      The theoretical foundation of TypeSafe AI builds upon—and crucially extends—one of the most famous essays in computer science: *Richard Sutton’s* 2019 manifesto, *The Bitter Lesson*. Sutton demonstrated that across seven decades of AI research, general methods that leverage massive computation (search and learning) invariably crush systems built around human-crafted domain heuristics.
    ]
  ],
  [
    #par[
      Seven years later, *Diogo Almeida* formulated its indispensable architectural corollary: *The Bitterest Lesson* (*La Lección Más Amarga*). Almeida argues that before scale and raw compute can work their magic, engineers must solve a deeper prerequisite: *selecting the right task formulation*.
    ]
    #v(4pt)
    #par[
      When the industry scaled autoregressive next-token prediction, it scaled an extraordinary simulator of human writing. Yet software engineering does not need a machine that writes essays to another machine; it needs a machine that evaluates ambiguous context and takes *reliable, calibrated decisions*. Jev is the direct materialization of *The Bitterest Lesson*: applying large-scale neural representation not to generate prose, but to execute sub-100ms typed decisions with mathematical honesty.
    ]
  ]
)

#v(5pt)

#tables.arch-table(
  title: "Table 1.1: Theoretical Evolution — Rich Sutton's 'Bitter Lesson' (2019) vs. Diogo Almeida's 'Bitterest Lesson' (2026)",
  columns: (1.05fr, 1.45fr, 1.5fr),
  headers: ("Dimension", "The Bitter Lesson (Richard Sutton, 2019)", "The Bitterest Lesson (Diogo Almeida, 2026)"),
  rows: (
    ("Core Thesis", "General learning & compute scale beat human domain heuristics.", "Task formulation precedes scale: scaling the wrong objective yields the wrong tool."),
    ("Primary Target", "Overcoming manual feature engineering in chess, Go, vision, and NLP.", "Overcoming the fallacy of using verbose text generation for software control flow."),
    ("Optimization Objective", "Autoregressive next-token log-likelihood & RLHF human preference.", "RLCD (Reinforcement Learning for Calibrated Decisions) & strict proper scoring."),
    ("Output Interface", "Unbounded natural language strings (prose, markdown, emulated JSON).", "Closed, mathematically verified software types (Choice, Score, Noul)."),
    ("Production Bottleneck", "Compute cost grows linearly with generated sequence length O(N).", "Eliminates token generation entirely: O(1) parallel sampling in ~70 ms.")
  ),
  notes: "References: R. Sutton (2019), 'The Bitter Lesson'; D. Almeida (2026), 'The Bitterest Lesson & System One Architecture'; N. Lambert (2026), O'Reilly."
)

#v(6pt)

#grid(
  columns: (1.05fr, 0.95fr),
  gutter: 12pt,
  [
    #styles.placeholder-figure(
      "Figure 1.2",
      "Scaling the Wrong Objective vs. Scaling Calibrated Decisions",
      "Visualizing Almeida's Bitterest Lesson: scaling compute along the 'Conversational Prose' axis yields eloquent chatbots that break microservice SLAs, whereas projecting compute onto the 'Calibrated Typed Decision' axis yields sub-100ms software primitives.",
      flow-prompt: "3D coordinate system diagram in dark slate engineering style. X-axis: 'Compute Scale (FLOPS)'. Y-axis (Divergent Crimson Curve): 'Autoregressive Prose Eloquence (High Latency, Fragile JSON)'. Z-axis (Glowing Cyan/Emerald Vector): 'The Bitterest Lesson: Calibrated Typed Decisions (Jev System One, 70ms, 0% Error)'. Crisp English labels.",
      height: 4.2cm,
      aspect: "16:10"
    )
  ],
  [
    #styles.concept-note(
      title: "The Bitter Lesson (Richard Sutton, 2019)",
      tag: "FOUNDATIONAL AI LAW",
      accent: styles.color-slate-blue,
      [
        Sutton's historical observation that researchers repeatedly embed human knowledge into AI for short-term gains, only to be surpassed by brute-force statistical learning and search as hardware scales exponentially.
      ]
    )
    #v(5pt)
    #styles.concept-note(
      title: "The Bitterest Lesson (Diogo Almeida, 2026)",
      tag: "TYPESAFE AI THESIS",
      accent: styles.color-accent,
      [
        Scaling compute is necessary but insufficient if the training objective is misaligned with the host medium. Automating software requires training directly for calibrated, non-generative decisions rather than conversational text.
      ]
    )
  ]
)
