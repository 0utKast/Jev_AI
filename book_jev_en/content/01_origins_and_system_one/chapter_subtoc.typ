// =============================================================================
// CHAPTER 1 SUB-INDEX & ARCHITECTURAL ROADMAP
// =============================================================================
#import "../../templates/styles.typ" as styles

#let chapter-01-subtoc() = {
  styles.chapter-subtoc(
    "1",
    "The Origins of TypeSafe AI, The Horseless Carriage Trap, and System One Models",
    (
      (
        "1.1",
        "Origin and History of TypeSafe AI: From InstructGPT to The Bitterest Lesson",
        "Diogo Almeida's trajectory at OpenAI, the $40M stealth foundation with Erik Gafni and Sasha Sheng, and why Rich Sutton's Bitter Lesson required a task-formulation corollary.",
        "7"
      ),
      (
        "1.2",
        "The 'Horseless Carriage' Trap and Marshall McLuhan's Rear-View Mirror",
        "Why forcing conversational chatbots into backend software control loops replicates the 1899 whip-holder fallacy and creates crippling generative debt.",
        "9"
      ),
      (
        "1.3",
        "Formal Definition of a 'System One Model': Parallel Sampling & Native Types",
        "Kahneman's cognitive dualism in silicon, O(1) parallel sampling vs. O(N) autoregressive KV-Cache decoding, and the three atomic primitives: Choice, Score, and Noul.",
        "11"
      )
    )
  )
}
