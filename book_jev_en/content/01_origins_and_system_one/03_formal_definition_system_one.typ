// =============================================================================
// SECTION 1.3: FORMAL DEFINITION OF A SYSTEM ONE MODEL (PAGES 11 & 12)
// Layout Variants: Page 11 = Archetype A-Vector (2-Col Prose + Native Vector Schematic + Figure)
//                  Page 12 = Archetype E (2-Col Prose & Colab Card + Python Code + Primitives Table)
// =============================================================================
#import "../../templates/styles.typ" as styles
#import "../../templates/tables.typ" as tables
#import "../../templates/components.typ" as components

// =============================================================================
// PAGE 11 (ARCHETYPE A-VECTOR): KAHNEMAN DUALISM, KV-CACHE & PARALLEL SAMPLER
// =============================================================================
== 1.3 Formal Definition of a “System One Model”: O(1) Parallel Sampling

#grid(
  columns: (1fr, 1fr),
  gutter: 13pt,
  [
    #styles.drop-cap("T", [
      o define what a *System One model* is in rigorous computer science terms, we must first understand the physical bottleneck that governs traditional Large Language Models. Generative models such as GPT-4, Claude, or Llama operate via *autoregressive decoding*. They synthesize responses strictly sequentially: computing one token, appending its Key-Value vectors to the GPU’s *KV Cache* in High-Bandwidth Memory (HBM), and reading the entire cache back again to compute the next token.
    ])
    #v(4pt)
    #par[
      If a response contains 60 tokens, the GPU must execute 60 serial memory-bound cycles. As *Chi Wang and Peiheng Hu* demonstrate in *Hands-On LLM Serving and Optimization* (O'Reilly, 2026), autoregressive generation is fundamentally starved not by arithmetic FLOPS, but by VRAM memory bandwidth. This step-by-step deliberation is the computational equivalent of *Daniel Kahneman’s System 2* (*Thinking, Fast and Slow*, 2011): slow, sequential, effortful, and ideal for writing an essay or proving a theorem.
    ]
  ],
  [
    #par[
      However, when a software service merely needs to determine whether an incoming request is malicious or which microservice should handle a ticket, invoking a System 2 generator is an architectural absurdity. A *System One Model*—as pioneered by *Jev*—shatters this sequential constraint through *non-autoregressive inference with a Parallel Sampler*.
    ]
    #v(4pt)
    #par[
      Instead of generating text token by token, Jev receives an unstructured context alongside a set of atomic decision queries and evaluates *all decision heads simultaneously in a single forward pass ($O(1)$)* across the GPU. Latency collapses from several seconds to *70–300 milliseconds*—the exact speed of a database query or UI frame refresh—while server HBM memory consumption plummets because no autoregressive output KV Cache is ever allocated.
    ]
  ]
)

#v(5pt)

// Crisp Native Typst Vector Schematic
#components.sampler-comparison-diagram()

#v(5pt)

#styles.placeholder-figure(
  "Figure 1.5",
  "GPU Silicon Execution: Memory-Bound Autoregressive KV-Cache vs. Compute-Dense Parallel Sampler",
  "Microarchitectural comparison on GPU HBM silicon. Left: Autoregressive decoding repeatedly stalls ALUs waiting for sequential KV-Cache memory transfers across N token steps. Right: Jev's Parallel Sampler executes a single dense forward pass O(1), projecting transformer activations directly into calibrated probability heads in ~70 ms.",
  flow-prompt: "Technical semiconductor cutaway diagram comparing two GPU execution modes. Left: 'Autoregressive Decoding O(N)' showing a cyclic loop between HBM Memory (KV Cache) and ALU cores with red memory-wall bottlenecks taking 2,500ms. Right: 'Jev System One Parallel Sampler O(1)' showing a single wide cyan data wave passing once through transformer layers and splitting into three calibrated output heads in 70ms. English labels.",
  height: 5.8cm,
  aspect: "16:9"
)

#pagebreak()

// =============================================================================
// PAGE 12 (ARCHETYPE E): RENOUNCING STRINGS, ATOMIC PRIMITIVES & PYTHON SDK
// =============================================================================

== Renouncing Strings: The Three Atomic Primitives (`Choice`, `Score`, `Noul`)

#grid(
  columns: (1.05fr, 0.95fr),
  gutter: 13pt,
  [
    #par[
      Here we arrive at TypeSafe AI’s defining architectural decision: *renouncing free-form strings entirely*. While natural language text is infinitely flexible for human communication, it is the slowest, most fragile, and least secure interface in software engineering. By eliminating free-form text generation, Jev unlocks three mathematical guarantees that traditional LLMs cannot match:
    ]
    #v(3pt)
    #list(
      [*1. Mathematical Type Safety (0.0% Schema Error):* Outputs are projected directly onto closed data structures (`Choice`, `Score`, `Noul`). Formatting errors and hallucinated JSON keys are impossible by construction.],
      [*2. Zero Output Token Cost (\$0.00):* Because no output tokens are generated, users pay ultra-low input rates (\$0.042/MTok) and *\$0 for output*.],
      [*3. Epistemic Honesty via RLCD:* As *Nathan Lambert* notes in *Reinforcement Learning from Human Feedback* (O'Reilly, 2026), RLHF breeds overconfident sycophancy. Jev is trained via *RLCD* (*Reinforcement Learning for Calibrated Decisions*), ensuring that a reported 90% confidence matches a true 90% empirical accuracy.]
    )
  ],
  [
    #styles.colab-lab(
      "01",
      "Synchronous Fast Router & Atomic Primitives in Python",
      "Hands-on English Google Colab laboratory demonstrating how Choice, Score, and Noul evaluate unstructured support tickets in a single ~71 ms O(1) pass with zero output tokens.",
      notebook-file: "notebooks_en/01_fast_router_colab_en.ipynb",
      colab-url: "https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks_en/01_fast_router_colab_en.ipynb"
    )
    #v(5pt)
    #styles.concept-note(
      title: "Formal Function Signature of Jev",
      tag: "MATHEMATICAL FORMULATION",
      accent: styles.color-slate-blue,
      [
        Instead of mapping strings to strings ($Sigma^* -> Sigma^*$), a System One model implements a calibrated typed projection:
        $ f_"Jev" : ("Context", cal(Q)_"typed") -> (cal(T)_"safe", [0, 1]^k) $
        where every emitted probability $hat(p)$ satisfies the calibration invariant $PP(hat(Y) = Y | hat(P) = p) = p$.
      ]
    )
  ]
)

#v(5pt)

#styles.code-listing(
  "from typesafe import TypeSafeClient, Choice, Score, Noul\n\nclient = TypeSafeClient(api_key=\"ts_live_secret_key\")\n\n# Single O(1) parallel forward pass (~71 ms | 0 output tokens | $0.00 output cost)\ndecision = client.system_one(\n    \"URGENT: Production database is frozen after the v4.2 migration!\",\n    Choice(\"department\", [\"technical_support\", \"billing\", \"sales\", \"churn_retention\"]),\n    Score(\"severity\", \"Operational urgency from 1 (routine) to 10 (critical outage)\"),\n    Noul(\"wake_oncall\", \"Incident requires waking the on-call SRE engineer immediately\")\n)\n\nprint(decision.department.choice, decision.department.probability) # 'technical_support', 0.94\nprint(decision.severity.score, decision.wake_oncall.value)         # 9.2, True",
  lang: "python",
  filename: "01_fast_router_en.py",
  caption: "Listing 1.1: Native System One invocation in Python. Three heterogeneous primitives (Choice, Score, and Noul) are evaluated concurrently in a single ~71 ms GPU pass, returning strongly typed attributes with calibrated RLCD probabilities."
)

#v(5pt)

#tables.arch-table(
  title: "Table 1.3: The Three Native Atomic Primitives of the TypeSafe AI (Jev) SDK",
  columns: (0.75fr, 1.25fr, 1.25fr, 1.35fr),
  headers: ("Primitive", "Mathematical Co-Domain", "Primary Software Use Case", "Returned Typed Attributes"),
  rows: (
    ("Choice(name, opts)", "Categorical Simplex Δ^(K-1)", "Multi-class routing, intent & tool selection", ".choice (str), .probability (float), .distribution (dict)"),
    ("Score(name, rubric)", "Bounded Interval [min, max] in R", "Continuous severity, priority & toxicity grading", ".score (float), .normalized (0..1), .confidence (float)"),
    ("Noul(name, claim)", "Calibrated Bernoulli p in [0, 1]", "Boolean guardrails, 2FA gates & SLA assertions", ".value (bool), .probability (calibrated float)")
  ),
  notes: "Full interactive implementation available in https://github.com/0utKast/Jev_AI/blob/main/notebooks_en/01_fast_router_colab_en.ipynb."
)
