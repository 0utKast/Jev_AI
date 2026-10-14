// =============================================================================
// PAGES 4 & 5: FOREWORD — SHOOTING STARS, THE GENERATIVE PARADOX & COLAB TRIAD
// Layout Variants: Page 4 = Archetype A (Balanced Top Prose + Pull Quote + Wide Figure)
//                  Page 5 = Archetype B (Top Wide Figure + 2-Col Prose + Lab Matrix Table)
// =============================================================================
#import "../../templates/styles.typ" as styles
#import "../../templates/tables.typ" as tables

#metadata("Foreword: Shooting Stars & System One")<chapter>

// =============================================================================
// PAGE 4 (ARCHETYPE A): FALLING APPLES, SHOOTING STARS & THE GENERATIVE PARADOX
// =============================================================================
= Foreword: Shooting Stars, Falling Apples, and the Generative Paradox

#grid(
  columns: (1fr, 1fr),
  gutter: 13pt,
  [
    #styles.drop-cap("L", [
      earning in the contemporary digital landscape feels like standing beneath a relentless meteor shower: watching thousands of apples fall and shooting stars streak across the sky at blinding velocity—the vast majority of which no one will remember tomorrow. The defining meta-skill of modern engineering is no longer passive accumulation, but developing the instantaneous judgment to decide *which falling apples and which shooting stars deserve our attention*.
    ])
    #v(4pt)
    #par[
      In recent weeks, one such shooting star has crossed the horizon of the artificial intelligence community with extraordinary force: *Jev*, developed by *TypeSafe AI*. Yet to understand why Jev may prove to be not a fleeting spark, but an enduring architectural milestone we will still discuss years from now, we must first bring precision to our vocabulary. Speaking of “Artificial Intelligence” in the abstract has become practically meaningless. Computer science has deployed intelligent algorithms for decades—from classical heuristic search trees to the rudimentary paddle logic of early video games like *Pong*.
    ]
  ],
  [
    #par[
      The genuine revolution of our era is *Generative AI*. With the arrival of the *Transformer* architecture, machines ceased merely classifying static datasets and began synthesizing entirely new information: drafting complex prose, writing source code, and rendering photorealistic imagery with unprecedented contextual comprehension. Consequently, treating “AI” as a single monolithic entity is a profound category error; we are witnessing an explosion of specialized computational instruments, of which Jev is a uniquely revealing exemplar.
    ]
    #v(4pt)
    #par[
      Crucially, the creative triumph of generative models introduced an unforeseen structural bottleneck inside software engineering. Over the past few years, the industry attempted to use conversational chatbots for everything—discovering the hard way that placing a verbose prose writer inside a deterministic program loop is disastrously inefficient. Waiting several seconds for a model to draft a sentence word by word simply to verify a boolean condition or route an API call produces unacceptable latency, runaway token costs, and fragile formatting errors.
    ]
  ]
)

#v(5pt)

#styles.pull-quote(
  "Although Jev is born from the exact same Transformer breakthroughs that made generative AI possible, its radical innovation consists precisely in renouncing text generation.",
  author: "Core Thesis of Jev & System One Engineering"
)

#v(5pt)

#styles.placeholder-figure(
  "Figure 0.1",
  "From Conversational Prose Generators to System One Decision Engines",
  "Conceptual comparison between the legacy 'Chat-in-the-Loop' bottleneck—where an autoregressive LLM generates verbose tokens over several seconds only to be parsed by fragile regex—and TypeSafe AI's Jev engine, which harnesses deep Transformer context comprehension to emit typed, calibrated decisions in 70 milliseconds.",
  flow-prompt: "Split-screen technical architectural illustration. Left side ('Conversational LLM Bottleneck'): a heavy, slow typewriter printing long scrolls of JSON text that jam a microservice gear pipeline with red error sparks. Right side ('Jev System One Engine'): a sleek high-speed optical processor absorbing chaotic text context and instantaneously emitting three crisp geometric data tokens (Choice, Score, Noul) in 70ms directly into clean code circuits. Slate blue, cyan, and amber palette, 8K vector style.",
  height: 5.4cm,
  aspect: "16:9"
)

#pagebreak()

// =============================================================================
// PAGE 5 (ARCHETYPE B): TOP HERO FIGURE + 2-COL PROSE + ENGLISH COLAB LAB MATRIX
// =============================================================================

#styles.placeholder-figure(
  "Figure 0.2",
  "The Three-Dimensional Learning Triad: Video Lecture, Architectural Book, and Live Colab Silicon",
  "Pedagogical architecture of this work: (1) The 70-minute companion video course providing visual intuition, (2) This English engineering treatise providing formal mathematical and O'Reilly bibliographical rigor, and (3) Five zero-install English Google Colab laboratories built with 100% Python Standard Library.",
  flow-prompt: "Isometric diagram of three interconnected engineering pillars forming a glowing triangle above a developer workstation: Pillar 1 'Video Masterclass (Visual Intuition)', Pillar 2 'Technical Book & O'Reilly Literature (Mathematical Rigor)', and Pillar 3 '5 Interactive Google Colab Labs (Live Python Execution)'. Clean modern technical infographic, English labels, deep slate and cyan.",
  height: 4.3cm,
  aspect: "21:9"
)

#v(6pt)

== The Renunciation of Free-Form Text and Our Practical Methodology

#grid(
  columns: (1fr, 1fr),
  gutter: 13pt,
  [
    #par[
      The software industry has reached a sobering realization: to automate backend infrastructure, we do not need machines to continuously compose free-form essays. *Jev* preserves the full semantic depth of modern Transformers, but repurposes that representation into a *System One decision engine*—an ultra-fast, type-safe component that generates neither paragraphs nor unverified code, but evaluates unstructured state and returns *typed, structured, and statistically calibrated decisions in a few dozen milliseconds*, ready to be consumed directly by software with zero intermediaries and zero structural hallucinations.
    ]
    #v(4pt)
    #styles.concept-note(
      title: "Zero-Dependency Reproducibility in Google Colab",
      tag: "ENGINEERING METHODOLOGY",
      accent: styles.color-accent-secondary,
      [
        Every practical laboratory in this book is engineered using *100% Python Standard Library (`stdlib`)*. Readers can execute all five laboratories in one click via Google Colab without `pip install` conflicts or paid API keys.
      ]
    )
  ],
  [
    #par[
      To ensure this book serves as both a theoretical reference and a hands-on engineering workbench, all five production case studies have been translated and published in English inside the official GitHub repository (#link("https://github.com/0utKast/Jev_AI")[`github.com/0utKast/Jev_AI`]).
    ]
    #v(4pt)
    #par[
      Furthermore, every architectural claim—from the physical memory-bandwidth ceiling of the *KV Cache* to *Bayesian decision theory under risk* and *Expected Calibration Error (ECE)*—is rigorously cross-referenced against canonical works in the *O'Reilly Learning* library, providing software architects with an authoritative blueprint for production deployment.
    ]
    #v(4pt)
    #styles.concept-note(
      title: "Official English Code & Notebooks Repository",
      tag: "OPEN-SOURCE ACCESS",
      accent: styles.color-accent,
      [
        Clone or launch the English notebooks directly from: \
        #link("https://github.com/0utKast/Jev_AI/tree/main/notebooks_en")[`github.com/0utKast/Jev_AI/tree/main/notebooks_en`]
      ]
    )
  ]
)

#v(6pt)

#tables.arch-table(
  title: "Table 0.1: Complete Suite of Interactive English Google Colab Laboratories Included in This Book",
  columns: (0.45fr, 1.35fr, 1.65fr, 1.15fr),
  headers: ("Lab", "Architectural Pattern", "English Notebook File (notebooks_en/)", "Key Verified Telemetry"),
  rows: (
    ("01", "Synchronous Fast Router (<80 ms)", "01_fast_router_colab_en.ipynb", "71.2 ms P50 • 91.2% cost savings"),
    ("02", "Hybrid Escalation (Confidence Gate)", "02_hybrid_escalation_colab_en.ipynb", "80% System 1 offload • 82.3% savings"),
    ("03", "Realtime API Ingress Guardrails", "03_realtime_guardrail_colab_en.ipynb", "99% DAN block • Zero TTFT penalty"),
    ("04", "Deterministic Agent Tool Dispatch", "04_tool_dispatch_colab_en.ipynb", "0.0% JSON error • 2FA safety gate"),
    ("05", "1,000-Request Production Benchmark", "05_benchmark_eval_colab_en.ipynb", "39.8x P99 speedup • 100% SLA <100ms")
  ),
  notes: "All 5 notebooks can be opened directly in Google Colab from https://github.com/0utKast/Jev_AI/tree/main/notebooks_en."
)
