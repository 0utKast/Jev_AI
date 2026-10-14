// =============================================================================
// EDITORIAL DESIGN SYSTEM: JEV & SYSTEM ONE ARCHITECTURE (ENGLISH EDITION)
// High-Variety Magazine & Technical Book Layout System in Typst
// =============================================================================

// --- COLOR PALETTE (TYPESAFE AI, CALIBRATED PROBABILITY & SILICON) ---
#let color-primary = rgb("0F172A")          // Deep obsidian slate for primary contrast
#let color-body = rgb("1E293B")             // Dark slate for continuous reading text
#let color-slate-blue = rgb("0B3C5D")       // Deep engineering blue for headings
#let color-accent = rgb("EA580C")           // Signal amber-orange for primary accents
#let color-accent-secondary = rgb("0284C7") // Calibration cyan for RLCD & metrics
#let color-bg-note = rgb("F8FAFC")          // Neutral light slate background for notes
#let color-border-note = rgb("CBD5E1")      // Soft slate border
#let color-colab-bg = rgb("F0F9FF")         // Pale sky blue for Google Colab laboratories
#let color-colab-border = rgb("0284C7")     // Cyan border for Colab cards
#let color-code-bg = rgb("F1F5F9")          // Light slate for Python code blocks
#let color-code-border = rgb("E2E8F0")      // Border for code listings
#let color-white = rgb("FFFFFF")
#let color-warning = rgb("DC2626")          // Alert crimson for RLHF sycophancy & JSON errors
#let color-success = rgb("16A34A")          // Verified emerald for 0% schema error & SLA

// --- SYSTEM TYPOGRAPHY (MACOS & UNIVERSAL EDITORIAL STANDARDS) ---
#let font-title = ("Helvetica Neue", "Arial")
#let font-body = ("Charter", "Georgia")
#let font-sans = ("Optima", "Arial")
#let font-code = ("Courier New", "Courier")

// =============================================================================
// EDITORIAL COMPONENTS & WIDGETS
// =============================================================================

// 1. Elegant Drop Cap for major page and section openings
#let drop-cap(letter, rest) = {
  grid(
    columns: (auto, 1fr),
    gutter: 7pt,
    align(top + left, text(size: 3.5em, weight: "bold", font: font-title, fill: color-slate-blue, letter)),
    align(top + left, text(top-edge: "bounds", rest))
  )
}

// 2. Individualized Concept / Historical / Architectural Note (Law 13 compliant)
#let concept-note(title: none, tag: "ARCHITECTURAL CONCEPT", accent: color-accent, body) = {
  block(
    width: 100%,
    breakable: false,
    rect(
      width: 100%,
      fill: color-bg-note,
      stroke: (left: 3.5pt + accent, rest: 0.5pt + color-border-note),
      inset: (x: 10pt, y: 6.5pt),
      radius: (right: 4pt),
      [
        #if tag != none [
          #text(font: font-sans, weight: "bold", size: 6.6pt, tracking: 1.1pt, fill: accent, upper(tag))
          #v(1.5pt)
        ]
        #if title != none [
          #text(font: font-title, weight: "bold", size: 8.9pt, fill: color-slate-blue, title)
          #v(2pt)
        ]
        #set par(leading: 0.58em)
        #set text(font: font-sans, size: 8.2pt, fill: color-body)
        #body
      ]
    )
  )
}

// 3. Prominent Full-Width or Column Pull Quote (Law 14 compliant)
#let pull-quote(quote-text, author: none, width: 96%) = {
  align(center, block(
    width: width,
    breakable: false,
    inset: (top: 6pt, bottom: 6pt, x: 8pt),
    stroke: (top: 1.4pt + color-accent, bottom: 1.4pt + color-accent),
    fill: color-bg-note.lighten(40%),
    [
      #set par(justify: false, leading: 0.60em)
      #text(font: font-title, style: "italic", weight: "medium", size: 10.2pt, fill: color-slate-blue, [“#quote-text”])
      #if author != none [
        #v(2.5pt)
        #text(font: font-sans, size: 8.0pt, weight: "bold", fill: color-body.lighten(20%), [— #author])
      ]
    ]
  ))
}

// 4. Interactive Google Colab Laboratory Card (English Edition)
#let colab-lab(number, title, description, notebook-file: none, colab-url: none) = {
  block(
    width: 100%,
    breakable: false,
    rect(
      width: 100%,
      fill: color-colab-bg,
      stroke: (left: 4pt + color-colab-border, rest: 0.5pt + color-colab-border.lighten(55%)),
      inset: (x: 11pt, y: 8pt),
      radius: (right: 4pt),
      [
        #grid(
          columns: (auto, 1fr),
          gutter: 8pt,
          align( horizon + left)[
            #rect(
              fill: color-colab-border,
              radius: 3pt,
              inset: (x: 6pt, y: 2.5pt),
              text(font: font-sans, size: 7.2pt, weight: "bold", fill: color-white, [COLAB LAB #number])
            )
          ],
          align(horizon + left)[
            #text(font: font-title, size: 9.2pt, weight: "bold", fill: color-slate-blue, title)
          ]
        )
        #v(3pt)
        #par(leading: 0.62em)[
          #text(font: font-sans, size: 8.4pt, fill: color-body, description)
        ]
        #if notebook-file != none [
          #v(3pt)
          #line(length: 100%, stroke: 0.4pt + color-colab-border.lighten(65%))
          #v(2.5pt)
          #text(font: font-code, size: 6.9pt, weight: "bold", fill: color-slate-blue, [File: #notebook-file])
          #if colab-url != none [
            \ #link(colab-url)[#text(font: font-sans, size: 7.5pt, weight: "bold", fill: color-accent, [Launch Interactive Notebook in Google Colab →])]
          ]
        ]
      ]
    )
  )
}

// 5. Syntax-Highlighted Python Source Code Listing
#let code-listing(code, lang: "python", caption: none, filename: none) = {
  block(
    width: 100%,
    breakable: false,
    rect(
      width: 100%,
      fill: color-code-bg,
      stroke: 0.5pt + color-code-border,
      inset: (x: 10pt, y: 7pt),
      radius: 4pt,
      [
        #grid(
          columns: (1fr, auto),
          if filename != none {
            text(font: font-code, size: 7.4pt, weight: "bold", fill: color-slate-blue, filename)
          } else {
            []
          },
          align(right, text(font: font-sans, size: 6.8pt, weight: "bold", fill: color-slate-blue.lighten(30%), upper(lang)))
        )
        #v(-2pt)
        #set text(size: 8.2pt)
        #raw(code, block: true, lang: lang)
        #if caption != none [
          #v(2pt)
          #line(length: 100%, stroke: 0.5pt + color-code-border)
          #v(2pt)
          #text(font: font-sans, size: 7.6pt, style: "italic", fill: color-body.lighten(20%), caption)
        ]
      ]
    )
  )
}

// 6. Flow Image Placeholder with Hyper-Specific Analytical Caption (Laws 15 & 16)
#let placeholder-figure(
  fig-id,
  title,
  caption,
  flow-prompt: none,
  height: 5.2cm,
  aspect: "16:9",
  width: 100%
) = {
  block(
    width: width,
    spacing: 5pt,
    breakable: false,
    [
      #rect(
        width: 100%,
        height: height,
        fill: color-bg-note,
        stroke: (paint: color-accent, dash: "dashed", thickness: 1.1pt),
        radius: (top: 4pt),
        inset: (x: 10pt, y: 6pt),
        align(center + horizon)[
          #rect(
            fill: color-slate-blue,
            radius: 3pt,
            inset: (x: 7pt, y: 2.5pt),
            text(font: font-sans, size: 6.8pt, tracking: 1.0pt, weight: "bold", fill: color-white,
                 upper(fig-id) + " • GOOGLE FLOW PLACEHOLDER [" + aspect + "]")
          )
          #v(3.5pt)
          #text(font: font-title, size: 8.9pt, weight: "bold", fill: color-slate-blue, title)
          #if flow-prompt != none [
            #v(3pt)
            #block(width: 95%)[
              #set par(leading: 0.52em)
              #text(font: font-sans, size: 6.9pt, style: "italic", fill: color-body.lighten(22%),
                    [Flow Prompt: “#flow-prompt”])
            ]
          ]
        ]
      )
      #v(-5pt)
      #rect(
        width: 100%,
        fill: color-bg-note.darken(2%),
        inset: (x: 10pt, y: 6pt),
        stroke: (left: 3pt + color-slate-blue, rest: 0.5pt + color-border-note),
        radius: (bottom-right: 3pt),
        align(left)[
          #set par(leading: 0.60em)
          #text(font: font-sans, size: 8.0pt, weight: "bold", fill: color-slate-blue, fig-id + ": ")
          #text(font: font-sans, size: 8.0pt, style: "italic", fill: color-body, caption)
        ]
      )
    ]
  )
}

// 7. Metric / Telemetry Highlight Strip (3 or 4 KPI boxes across page)
#let kpi-strip(items) = {
  block(
    width: 100%,
    breakable: false,
    grid(
      columns: (1fr,) * items.len(),
      gutter: 8pt,
      ..items.map(item => rect(
        width: 100%,
        fill: color-bg-note,
        stroke: (top: 2.5pt + item.at(2), rest: 0.5pt + color-border-note),
        inset: (x: 8pt, y: 7pt),
        radius: (bottom: 3pt),
        align(center + horizon)[
          #text(font: font-title, size: 13pt, weight: "bold", fill: item.at(2), item.at(0))
          #v(2pt)
          #text(font: font-sans, size: 7.4pt, weight: "bold", fill: color-slate-blue, upper(item.at(1)))
          #v(1pt)
          #text(font: font-sans, size: 7.0pt, fill: color-body.lighten(20%), item.at(3))
        ]
      ))
    )
  )
}

// 8. Chapter-Level Sub-Index Module (Mini-TOC)
#let chapter-subtoc(chapter-num, chapter-title, sections) = {
  block(
    width: 100%,
    breakable: false,
    rect(
      width: 100%,
      fill: color-colab-bg,
      stroke: (left: 4pt + color-accent-secondary, rest: 0.5pt + color-border-note),
      inset: (x: 12pt, y: 9pt),
      radius: (right: 4pt),
      [
        #text(font: font-sans, weight: "bold", size: 7.5pt, tracking: 1.5pt, fill: color-accent-secondary,
              "CHAPTER " + str(chapter-num) + " ARCHITECTURAL BLUEPRINT & SECTION ROADMAP")
        #v(2pt)
        #text(font: font-title, weight: "bold", size: 11.2pt, fill: color-slate-blue, chapter-title)
        #v(4pt)
        #line(length: 100%, stroke: 0.5pt + color-border-note)
        #v(4pt)
        #for sec in sections [
          #grid(
            columns: (28pt, 1fr, auto),
            gutter: 8pt,
            align(left + horizon)[#text(font: font-title, weight: "bold", size: 8.3pt, fill: color-accent, sec.at(0))],
            align(left + horizon)[
              #text(font: font-title, weight: "bold", size: 8.3pt, fill: color-primary, sec.at(1))
              #if sec.at(2) != "" [ \ #text(font: font-body, style: "italic", size: 7.6pt, fill: color-body.lighten(25%), sec.at(2)) ]
            ],
            align(right + horizon)[#text(font: font-sans, weight: "bold", size: 8.0pt, fill: color-accent-secondary, "p. " + sec.at(3))]
          )
          #v(3pt)
        ]
      ]
    )
  )
}

// --- GLOBAL EDITORIAL FOOTER COMPONENT ---
#let book-footer() = context {
  let page-num = counter(page).get().first()
  if page-num <= 1 { return } // Suppress ONLY on cover (page 1)

  let chapters = query(selector(<chapter>).before(here()))
  let chapter-title = if chapters.len() > 0 {
    chapters.last().value
  } else {
    if page-num == 2 {
      "Title & Open-Source Imprint"
    } else if page-num == 3 {
      "Master Table of Contents"
    } else {
      "Foreword: Shooting Stars & System One"
    }
  }

  let num-str = str(page-num)
  let footer-content = if calc.odd(page-num) {
    grid(
      columns: (1fr, auto),
      align(left, text(font: font-sans, size: 8.2pt, fill: color-body.lighten(35%), chapter-title)),
      align(right, text(font: font-sans, size: 8.8pt, weight: "bold", fill: color-slate-blue, num-str))
    )
  } else {
    grid(
      columns: (auto, 1fr),
      align(left, text(font: font-sans, size: 8.8pt, weight: "bold", fill: color-slate-blue, num-str)),
      align(right, text(font: font-sans, size: 8.2pt, fill: color-body.lighten(35%), chapter-title))
    )
  }

  stack(
    line(length: 100%, stroke: 0.5pt + color-border-note),
    v(4pt),
    footer-content
  )
}

// =============================================================================
// MASTER DOCUMENT SETUP FUNCTION
// =============================================================================
#let configure-document(body) = {
  set page(
    paper: "a4",
    margin: (x: 1.85cm, top: 1.90cm, bottom: 1.85cm),
    header: context {
      let page-num = counter(page).get().first()
      if page-num <= 3 { return } // Suppress on cover, title page, and TOC

      let header-content = if calc.odd(page-num) {
        align(right, text(font: font-sans, size: 7.8pt, tracking: 1.2pt, fill: color-slate-blue.lighten(20%), "JEV & SYSTEM ONE ARCHITECTURE • TYPESAFE AI"))
      } else {
        align(left, text(font: font-sans, size: 7.8pt, tracking: 1.2pt, fill: color-slate-blue.lighten(20%), "SUB-100MS CALIBRATED DECISIONS & RLCD IN PRODUCTION"))
      }

      stack(
        header-content,
        v(4pt),
        line(length: 100%, stroke: 0.5pt + color-accent)
      )
    },
    footer: book-footer()
  )

  set par(justify: true, leading: 0.63em)
  set text(font: font-body, size: 9.4pt, fill: color-body, lang: "en", hyphenate: true)

  show heading: it => {
    set text(fill: color-slate-blue, hyphenate: false)
    if it.level == 1 {
      block(width: 100%, below: 8pt, above: 10pt, breakable: false)[
        #text(font: font-title, size: 1.48em, weight: "bold", it.body)
        #v(3pt)
        #line(length: 35%, stroke: 1.8pt + color-accent)
      ]
    } else if it.level == 2 {
      block(below: 6pt, above: 7pt, breakable: false)[
        #text(font: font-title, size: 1.15em, weight: "bold", it.body)
      ]
    } else {
      block(below: 4pt, above: 5pt, breakable: false)[
        #text(font: font-sans, size: 0.96em, weight: "bold", it.body)
      ]
    }
  }

  body
}
