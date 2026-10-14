// =============================================================================
// PRE-STYLED ARCHITECTURAL & TELEMETRY TABLES
// Precision comparative matrices for Jev & System One Architecture
// =============================================================================
#import "styles.typ" as styles

#let arch-table(title: none, columns: (), headers: (), rows: (), notes: none) = {
  block(
    width: 100%,
    breakable: false,
    [
      #if title != none {
        text(font: styles.font-title, weight: "bold", size: 8.8pt, fill: styles.color-slate-blue, title)
        v(3pt)
      }
      #table(
        columns: columns,
        stroke: (x, y) => if y == 0 {
          (bottom: 1.5pt + styles.color-accent, top: 1.5pt + styles.color-slate-blue)
        } else {
          (bottom: 0.5pt + styles.color-border-note)
        },
        fill: (x, y) => if y == 0 {
          styles.color-slate-blue.lighten(90%)
        } else if calc.odd(y) {
          styles.color-bg-note
        } else {
          styles.color-white
        },
        align: (col, row) => if row == 0 {
          left + horizon
        } else if col == 0 {
          left + horizon
        } else {
          left + horizon
        },
        inset: (x: 6pt, y: 4.5pt),
        ..headers.map(h => text(font: styles.font-sans, weight: "bold", size: 7.8pt, fill: styles.color-slate-blue, h)),
        ..rows.flatten().map(c => text(font: styles.font-sans, size: 7.6pt, fill: styles.color-body, c))
      )
      #if notes != none [
        #v(2pt)
        #text(font: styles.font-sans, size: 7.0pt, style: "italic", fill: styles.color-body.lighten(25%), notes)
      ]
    ]
  )
}
