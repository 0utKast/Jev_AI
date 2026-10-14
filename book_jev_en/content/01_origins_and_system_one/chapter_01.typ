// =============================================================================
// PAGE 6 (ARCHETYPE F): CHAPTER 1 OPENER & ARCHITECTURAL BLUEPRINT
// =============================================================================
#import "../../templates/styles.typ" as styles
#import "chapter_subtoc.typ": chapter-01-subtoc

#metadata("Chapter 1: Origins & The System One Model")<chapter>

#align(left)[
  #rect(
    fill: styles.color-accent,
    radius: 3pt,
    inset: (x: 10pt, y: 4pt),
    text(font: styles.font-sans, size: 7.8pt, tracking: 2pt, weight: "bold", fill: styles.color-white, "CHAPTER 1 • FOUNDATIONS & THESIS")
  )
  #v(6pt)
  #text(font: styles.font-title, size: 1.95em, weight: "bold", fill: styles.color-slate-blue)[
    The Origins of TypeSafe AI, The Horseless Carriage Trap, and System One Models
  ]
  #v(4pt)
  #line(length: 30%, stroke: 2pt + styles.color-accent)
  #v(5pt)
  #text(font: styles.font-body, style: "italic", size: 1.02em, fill: styles.color-body.lighten(15%))[
    Why Superhuman Conversational Eloquence Failed to Automate Enterprise Software—and How Renouncing Strings Solves the Production Chasm
  ]
]

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 13pt,
  [
    #par[
      Chapter 1 establishes the historical, philosophical, and mathematical foundations of *Jev* and the *System One* model family developed by *TypeSafe AI*. We trace the journey from the birth of *InstructGPT* and *RLHF* inside OpenAI to the realization that conversational alignment optimized models for human persuasion rather than software reliability.
    ]
  ],
  [
    #par[
      Through *Diogo Almeida’s* formulation of *The Bitterest Lesson*, *Marshall McLuhan’s* media theory, and *Daniel Kahneman’s* cognitive architecture, we demonstrate why eliminating free-form string generation is the essential prerequisite for sub-100ms, zero-error software automation.
    ]
  ]
)

#v(6pt)

#chapter-01-subtoc()

#v(6pt)

#styles.placeholder-figure(
  "Figure 1.0",
  "Chapter 1 Architectural Taxonomy: From Conversational Monoliths to Typed System One Primitives",
  "Overview of the paradigm shift covered in Chapter 1: moving from the 'Horseless Carriage' era of verbose, uncalibrated System 2 chat prompts (1,500–5,000 ms) to TypeSafe AI's System One architecture, where a single O(1) forward pass projects unstructured context onto mathematically guaranteed Choice, Score, and Noul primitives.",
  flow-prompt: "Panoramic technical blueprint showing the evolution of AI in software. Left third: '2020-2024 Conversational Era' (a vintage carriage with a jet engine strapped to it, emitting chaotic text scrolls). Right two-thirds: '2026 System One Era (Jev)' showing a precision semiconductor chip transforming raw unstructured inputs into three clean typed outputs: Choice, Score, and Noul in 70ms. Deep slate, cyan, and amber palette.",
  height: 4.5cm,
  aspect: "16:9"
)

#pagebreak()

#include "01_origins_typesafe_ai.typ"

#pagebreak()

#include "02_horseless_carriage_trap.typ"

#pagebreak()

#include "03_formal_definition_system_one.typ"
