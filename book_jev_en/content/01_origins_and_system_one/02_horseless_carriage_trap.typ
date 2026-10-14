// =============================================================================
// SECTION 1.2: THE HORSELESS CARRIAGE TRAP (PAGES 9 & 10)
// Layout Variants: Page 9  = Archetype B (Top Wide Figure + 2-Col Prose + Pull Quote + Note)
//                  Page 10 = Archetype C-Left (Left Tall Sidebar 0.85fr / Right Prose 1.15fr)
// =============================================================================
#import "../../templates/styles.typ" as styles
#import "../../templates/tables.typ" as tables

// =============================================================================
// PAGE 9 (ARCHETYPE B): TOP WIDE PLACEHOLDER + 2-COL PROSE + MCLUHAN PULL QUOTE
// =============================================================================

#styles.placeholder-figure(
  "Figure 1.3",
  "The 1899 Horseless Carriage Fallacy vs. The Conversational Chatbot Trap in Software",
  "Historical parallel invoked by Marshall McLuhan: just as 19th-century engineers bolted internal combustion engines onto wooden horse buggies—complete with an ornamental whip-holder—early GenAI engineering trapped neural reasoning inside human chat windows and verbose JSON strings.",
  flow-prompt: "Side-by-side conceptual technical illustration. Left panel: an 1899 wooden horseless carriage blueprint highlighting a useless 'Ornamental Whip Holder' in glowing amber. Right panel: a modern cloud microservice architecture awkwardly stuffing a human chat bubble ('Sure! Here is your JSON: ...') into a binary API socket. Clean editorial infographic, English labels.",
  height: 4.6cm,
  aspect: "21:9"
)

#v(5pt)

== 1.2 The “Horseless Carriage” Trap and McLuhan’s Rear-View Mirror

#grid(
  columns: (1fr, 1fr),
  gutter: 13pt,
  [
    #styles.drop-cap("A", [
      t the close of the nineteenth century, when the first internal combustion automobiles rolled out of workshops, inventors did not design a modern aerodynamic vehicle from scratch. Instead, they took the wooden horse-drawn buggy they had known for centuries, removed the horses, and bolted a gasoline engine underneath the floorboards. Those early vehicles were literally called *“horseless carriages.”*
    ])
    #v(4pt)
    #par[
      So powerful was the mental inertia of the past that many of those early motorcars were manufactured with a *mounted whip-holder* next to the driver’s seat—even though there was no longer any horse to whip. As the visionary media theorist *Marshall McLuhan* explained in his seminal 1964 treatise *Understanding Media: The Extensions of Man*, humanity invariably marches into the future while staring through a *rear-view mirror*: whenever a disruptive technology emerges, we instinctively force it into the mold of the preceding medium.
    ]
  ],
  [
    #par[
      When early cinema was invented, directors simply planted a static camera in front of a theater stage and filmed actors declaiming as if they were on Broadway. When television arrived, networks broadcast radio announcers reading scripts into a microphone. Only decades later did each medium discover its *native grammar*.
    ]
    #v(4pt)
    #par[
      Over the past four years, artificial intelligence has been trapped in its own *Horseless Carriage phase*. Because the breakthrough of InstructGPT and ChatGPT manifested through a human chat interface, the entire software industry assumed that *human conversation* was the universal interface for machine intelligence. Engineers began stuffing conversational prompts inside backend microservices, asking a model to “act as an expert assistant” and write out polite paragraphs or stringified JSON characters just to classify a database row.
    ]
  ]
)

#v(5pt)

#styles.pull-quote(
  "We look at the present through a rear-view mirror. We march backwards into the future, forcing every new medium to imitate the forms of the old.",
  author: "Marshall McLuhan — Understanding Media: The Extensions of Man (1964)"
)

#v(5pt)

#styles.concept-note(
  title: "The Whip-Holder of Modern AI Engineering: Stringified JSON Prompts",
  tag: "MEDIA THEORY IN SOFTWARE",
  accent: styles.color-accent,
  [
    Writing a 300-word prompt instructing an LLM to *"Reply ONLY with valid JSON and no markdown backticks"* is the exact 21st-century equivalent of the whip-holder on an 1899 horseless carriage: an archaic human conversational artifact bolted onto a high-speed neural representation that never needed to emit text characters in the first place.
  ]
)

#pagebreak()

// =============================================================================
// PAGE 10 (ARCHETYPE C-LEFT): LEFT SIDEBAR (0.85fr) + RIGHT PROSE (1.15fr) + TABLE
// =============================================================================

== Escaping the Chatbot Mold: Why Software Needs Native Primitives

#grid(
  columns: (0.85fr, 1.15fr),
  gutter: 13pt,
  [
    #styles.placeholder-figure(
      "Figure 1.4",
      "Anatomy of Generative Debt Inside a Backend Microservice Loop",
      "Breakdown of the four compounding penalties incurred when a System 2 conversational LLM is invoked synchronously inside an API gateway: (1) Prompt Verbosity Overhead, (2) Sequential KV-Cache Latency, (3) Output Token Billing (5x input rate), and (4) Defensive JSON Parsing Failures.",
      flow-prompt: "Vertical technical cutaway diagram (3:4 aspect ratio) of a cloud API server pipeline. Four glowing crimson warning gauges show '1. Prompt Bloat', '2. 2,400ms KV-Cache Stall', '3. 5x Output Token Tax', and '4. JSON Syntax Crash (4.5%)'. Below it, a clean bypass valve labeled 'Jev System One (70ms Native Call)'. Crisp English labels.",
      height: 5.6cm,
      aspect: "3:4"
    )
    #v(5pt)
    #styles.concept-note(
      title: "Generative Debt",
      tag: "PRODUCTION ANTI-PATTERN",
      accent: styles.color-warning,
      [
        The accumulated latency, token cost, and defensive parsing complexity introduced whenever an engineering team uses an autoregressive text generator to perform a discrete classification, routing, or scoring task where no human ever reads the generated prose.
      ]
    )
  ],
  [
    #par[
      What happens when we examine a real production codebase through McLuhan’s lens? Consider an e-commerce platform processing 5,000 customer transactions per minute, or a financial risk engine auditing payment payloads in real time. Inside that backend code, there is no human sitting in front of a screen waiting to read a literary essay.
    ]
    #v(4pt)
    #par[
      What the surrounding Python, Go, or Rust code actually needs is a *typed value*: an enum variant (`Department.BILLING`), a bounded floating-point severity score (`8.4`), or a calibrated boolean flag (`is_fraud = True` with probability $p = 0.94$) so the program can immediately execute an `if-else` branch or trigger a database transaction.
    ]
    #v(4pt)
    #par[
      When engineers use a conventional LLM for this task, they incur a grotesque round-trip translation tax:
    ]
    #v(3pt)
    #list(
      [*Step 1 (Serialization to Prose):* The application converts structured program state into a verbose natural-language prompt.],
      [*Step 2 (Autoregressive Token Generation):* The GPU executes dozens of sequential forward passes to spell out ASCII characters (`{`, `"`, `r`, `o`, `u`, `t`, `e`, `"`, `:`, ...), consuming expensive memory bandwidth.],
      [*Step 3 (Defensive Deserialization):* The host code runs regex strippers and `json.loads()` wrappers, praying the model did not prepend *"Certainly! Here is your JSON:"* or truncate a closing brace.]
    )
    #v(4pt)
    #par[
      As *Chip Huyen* emphasizes in *AI Engineering* (O'Reilly, 2024) and *John Berryman & Albert Ziegler* detail in *Prompt Engineering for LLMs* (O'Reilly, 2024), forcing generative models into rigid schemas introduces latency penalties and residual failure rates that compound catastrophically across multi-step pipelines. *Jev* dismantling this horseless carriage is the birth of native AI engineering: stripping away the conversational chassis so the neural engine connects directly to the drive shaft of software types.
    ]
  ]
)

#v(6pt)

#tables.arch-table(
  title: "Table 1.2: The 'Horseless Carriage' Round-Trip Tax vs. Native System One Execution",
  columns: (1.1fr, 1.45fr, 1.45fr),
  headers: ("Pipeline Stage", "Conversational LLM ('Horseless Carriage')", "Jev System One (Native Software Primitive)"),
  rows: (
    ("1. Input Formulation", "Verbose persona prompt + few-shot JSON examples", "Raw context + declarative typed primitives"),
    ("2. GPU Execution", "30–150 sequential autoregressive passes O(N)", "Single parallel forward pass O(1) (~70 ms)"),
    ("3. Wire Payload", "Unverified UTF-8 string characters ($5x output tax)", "Direct probability distribution & float scores ($0 output)"),
    ("4. Host Consumption", "Regex stripping + try/catch json.loads() + retries", "Immediate native attribute access (0.0% syntax error)")
  ),
  notes: "Cross-referenced with J. Berryman & A. Ziegler, 'Prompt Engineering for LLMs' (O'Reilly, 2024) and C. Huyen, 'AI Engineering' (O'Reilly, 2024)."
)
