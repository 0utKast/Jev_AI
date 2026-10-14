// =============================================================================
// JEV & SYSTEM ONE ARCHITECTURE: THE DEFINITIVE ENGINEERING GUIDE
// Sub-100ms Calibrated Decisions, RLCD, and the End of Slow Generative AI
// First English Edition • Antigravity Engineering Lab
// =============================================================================

#import "templates/styles.typ" as styles
#import "templates/cover.typ": book-cover

#show: styles.configure-document

// --- PAGE 1: MASTER FRONT COVER ---
#book-cover()

// --- PAGES 2 & 3: FRONT MATTER (TITLE PAGE & MASTER TOC) ---
#include "content/00_front_matter/title_page.typ"

#include "content/00_front_matter/master_toc.typ"

#pagebreak()

// --- PAGES 4 & 5: FOREWORD ---
#include "content/00_front_matter/foreword.typ"

#pagebreak()

// --- PAGES 6 TO 12: CHAPTER 1 (ORIGINS, HORSELESS CARRIAGE & SYSTEM ONE) ---
#include "content/01_origins_and_system_one/chapter_01.typ"

#pagebreak()

// --- PAGE 13: APPENDIX A (5 ENGLISH GOOGLE COLAB LABORATORIES) ---
#include "content/06_back_matter/colab_labs_catalog.typ"

#pagebreak()

// --- PAGES 14 & 15: APPENDIX B (ANNOTATED O'REILLY BIBLIOGRAPHY) ---
#include "content/06_back_matter/bibliography.typ"
