---
name: legal-brief
description: >
  Use when user says "brief dla prawnika", "brief prawny", "przygotuj brief do regulaminu",
  "co musi byc w regulaminie", "red flags przed produkcja", "co brakuje przed startem",
  or asks about legal aspects of a web service in the context of its codebase.
  Also use when updating an existing LEGAL_BRIEF.md with new findings.
---

# Legal Brief Generator

Generate a professional legal brief (LEGAL_BRIEF.md) for a lawyer writing Terms of Service for a web platform.
You act as an **experienced legal counsel specializing in e-commerce** who can also **read source code and translate technical mechanisms into legal risks**.

## Process

```dot
digraph legal_brief {
    "User requests brief" [shape=doublecircle];
    "LEGAL_BRIEF.md exists?" [shape=diamond];
    "Read existing brief" [shape=box];
    "Note what's covered" [shape=box];
    "Collect project context" [shape=box];
    "Analyze FAQ vs code gaps" [shape=box];
    "Generate/update brief" [shape=box];
    "Write LEGAL_BRIEF.md" [shape=box];
    "Report summary to user" [shape=doublecircle];

    "User requests brief" -> "LEGAL_BRIEF.md exists?";
    "LEGAL_BRIEF.md exists?" -> "Read existing brief" [label="yes"];
    "LEGAL_BRIEF.md exists?" -> "Collect project context" [label="no"];
    "Read existing brief" -> "Note what's covered";
    "Note what's covered" -> "Collect project context";
    "Collect project context" -> "Analyze FAQ vs code gaps";
    "Analyze FAQ vs code gaps" -> "Generate/update brief";
    "Generate/update brief" -> "Write LEGAL_BRIEF.md";
    "Write LEGAL_BRIEF.md" -> "Report summary to user";
}
```

### Step 0 — Check for existing brief

Use Glob to find `**/LEGAL_BRIEF.md`. If found, Read it. Identify what's already covered. **Improve and extend** rather than rewriting from scratch. Add a changelog entry.

### Step 1 — Collect project context

Use dedicated tools (Glob, Read, Grep) — **never** bash find/cat/grep:

1. **Project structure** — Glob for `**/*.py`, `**/*.ts`, `**/*.js` (skip migrations, node_modules)
2. **Data models** — Grep for model files, Read key ones
3. **FAQ** — Read `docs/faq/faq_generated.json` (or equivalent)
4. **Payments** — Grep for `stripe|payu|payment|checkout|commission|prowizja`, Read matching files
5. **Registration & GDPR** — Grep for `register|signup|consent|gdpr|rodo|privacy|cookie`
6. **Disputes & abuse** — Grep for `ban|block|dispute|complaint|refund|suspend`
7. **Terms/privacy pages** — Grep for `terms|regulamin|privacy|polityka`, Read templates

For each legally-critical file — Read its full content.

### Step 2 — Analyze FAQ and cross-reference with code

Read the FAQ file and produce an explicit cross-reference:

| FAQ topic | Code status | Implication |
|-----------|-------------|-------------|
| FAQ says X | Code implements / doesn't implement | Gap for ToS / gray area |

Extract:
- Questions suggesting real user problems with fees, refunds, account bans
- Topics FAQ covers but code doesn't handle (= gaps needing ToS coverage)
- Topics code implements but FAQ ignores (= gray areas)
- **Contradictions** between FAQ answers and actual code behavior (e.g., different timeframes)

Include this cross-reference as a subsection within section 2.11 of the brief.

### Step 3 — Generate LEGAL_BRIEF.md

Write to project root. Follow the template in `references/brief-template.md` **exactly**.

### Step 4 — Critical rules

**Language:** Polish, functional descriptions for a lawyer who doesn't read code. Describe mechanisms functionally ("system automatycznie pobiera prowizje po potwierdzeniu odbioru"), NOT technically.

Forbidden in output: function/class/variable names, code constants (`FEE_PERCENT`, `DISPUTE_WINDOW_DAYS`), endpoint paths (`/api/...`), field names (`is_buyer_blocked`), SDK/product codenames (`Stripe Connect Express`, `Cloudflare R2`). Use plain descriptions instead: "operator platnosci", "magazyn mediow w chmurze".

**No hallucination:** Describe ONLY what exists in code or FAQ. If something can't be determined, mark: `[DO USTALENIA Z ZESPOLEM]`.

**Every item in section 2** must follow this format:
- **Opis:** what happens in the system (functionally)
- **Ryzyko prawne:** why this needs a ToS clause
- **Sugerowany zakres zapisu:** what the ToS should address
- **Priorytet:** KRYTYCZNY / WYSOKI / SREDNI

**Every place where users can be charged money = KRYTYCZNY priority.**

**FAQ questions about refunds/disputes/bans = proof the process exists and MUST be in ToS.**

**Red flags section must be brutally honest** — its purpose is protection against real legal risk. Use structured tables per category (see template).

### Step 5 — Report to user

After writing the file, tell the user:
1. Where the file was saved
2. How many sections and red flags were generated
3. Top 3 critical blockers before production (if any)
4. What needs a business decision before the lawyer can start

If you updated an existing file — state what specifically changed.
