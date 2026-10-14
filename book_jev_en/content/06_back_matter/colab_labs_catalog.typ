// =============================================================================
// APPENDIX A: THE 5 ENGLISH GOOGLE COLAB LABORATORIES & REPOSITORY GUIDE
// =============================================================================
#import "../../templates/styles.typ" as styles

#metadata("Appendix A: English Google Colab Laboratories")<chapter>

#align(left)[
  #rect(
    fill: styles.color-accent-secondary,
    radius: 3pt,
    inset: (x: 10pt, y: 4pt),
    text(font: styles.font-sans, size: 7.8pt, tracking: 2pt, weight: "bold", fill: styles.color-white, "APPENDIX A • PRACTICAL WORKBENCH")
  )
  #v(6pt)
  #text(font: styles.font-title, size: 1.9em, weight: "bold", fill: styles.color-slate-blue)[
    The 5 Interactive English Google Colab Laboratories
  ]
  #v(3pt)
  #line(length: 30%, stroke: 2pt + styles.color-accent-secondary)
  #v(4pt)
  #text(font: styles.font-body, style: "italic", size: 1.0em, fill: styles.color-body.lighten(15%))[
    Zero-Install, 100% Python Standard Library Notebooks Hosted at #link("https://github.com/0utKast/Jev_AI")[github.com/0utKast/Jev_AI]
  ]
]

#v(6pt)

#grid(
  columns: (1fr, 1fr),
  gutter: 12pt,
  [
    #styles.colab-lab(
      "01",
      "Synchronous Fast Router (<80 ms in API Gateway)",
      "Replaces slow JSON-mode LLM prompts with a single O(1) System One call evaluating department routing (Choice), urgency (Score), and churn risk (Noul) in ~71.2 ms with 91.2% cost savings.",
      notebook-file: "notebooks_en/01_fast_router_colab_en.ipynb",
      colab-url: "https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks_en/01_fast_router_colab_en.ipynb"
    )
    #v(6pt)
    #styles.colab-lab(
      "02",
      "Hybrid Escalation & The Confidence Gate (85% Threshold)",
      "Implements the dual System 1 / System 2 cascade (Lakshmanan & Hapke, O'Reilly 2025). Resolves 80% of traffic deterministically in 72.2 ms and escalates only the 20% ambiguous tail.",
      notebook-file: "notebooks_en/02_hybrid_escalation_colab_en.ipynb",
      colab-url: "https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks_en/02_hybrid_escalation_colab_en.ipynb"
    )
    #v(6pt)
    #styles.colab-lab(
      "03",
      "Realtime API Ingress Guardrails (Jailbreak, PII & Toxicity)",
      "Synchronous perimeter firewall inspecting prompts in ~73 ms for DAN jailbreaks (99% detection), secret API keys / credit card leaks, and hostility without penalizing Time to First Token (TTFT).",
      notebook-file: "notebooks_en/03_realtime_guardrail_colab_en.ipynb",
      colab-url: "https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks_en/03_realtime_guardrail_colab_en.ipynb"
    )
  ],
  [
    #styles.colab-lab(
      "04",
      "Deterministic Agent Tool Dispatch & 2FA Safety Gate",
      "Eliminates the 4.8% JSON schema failure rate in multi-step AI agents by projecting tool selection onto a closed Choice simplex, paired with a calibrated Noul 2FA lock for destructive actions.",
      notebook-file: "notebooks_en/04_tool_dispatch_colab_en.ipynb",
      colab-url: "https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks_en/04_tool_dispatch_colab_en.ipynb"
    )
    #v(6pt)
    #styles.colab-lab(
      "05",
      "Quantitative Benchmark: 1,000 Production Requests",
      "Empirical evaluation comparing Jev System One against traditional LLMs across P50/P90/P99 latency percentiles, certifying a 39.8x P99 tail speedup, 100% SLA compliance (<100 ms), and 89.6% savings.",
      notebook-file: "notebooks_en/05_benchmark_eval_colab_en.ipynb",
      colab-url: "https://colab.research.google.com/github/0utKast/Jev_AI/blob/main/notebooks_en/05_benchmark_eval_colab_en.ipynb"
    )
    #v(6pt)
    #styles.concept-note(
      title: "How to Run the Laboratories in Google Colab or Locally",
      tag: "EXECUTION GUIDE",
      accent: styles.color-slate-blue,
      [
        *Option 1 (1-Click Browser Execution):* Click any *"Launch in Google Colab →"* link above, or browse #link("https://github.com/0utKast/Jev_AI/tree/main/notebooks_en")[`github.com/0utKast/Jev_AI/tree/main/notebooks_en`]. \
        *Option 2 (Local Clone):* Run `git clone https://github.com/0utKast/Jev_AI.git` and execute any script using standard Python 3.9+.
      ]
    )
  ]
)
