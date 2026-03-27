---
name: faq-generator
description: Use when generating or updating FAQ knowledge base for wedkowisko.pl - scans project docs, templates, and code to produce categorized Q&A pairs in JSON format for database import
---

# FAQ Generator

Generate categorized Q&A pairs for wedkowisko.pl by scanning project files. Output is JSON ready for DB import.

## Arguments

- No arguments = full scan, all categories
- Category slug = generate only that category (e.g., `faq-generator wysylka`)
- `--output path/file.json` = custom output path (default: `docs/faq/faq_generated.json`)

## Step 1: Read Knowledge Sources

Read these files in order. Skip files that don't exist.

**Core docs (always read):**
1. `docs/business-logic.md`
2. `CLAUDE.md` — sections: Data model, Transaction flow, App structure, Implementation status
3. `docs/FEATURES.md`
4. `docs/inpost-integration-guide.md`
5. `templates/pages/faq.html` — existing Q&A as inspiration
6. `templates/pages/terms.html`
7. `templates/pages/privacy.html`

**Per-category code (read only for categories being generated):**

| Category | Code files |
|----------|-----------|
| `konto` | `apps/users/models.py`, `apps/users/forms.py`, `apps/users/views.py` |
| `wystawianie` | `apps/listings/models.py`, `apps/listings/forms.py`, `apps/listings/views.py` |
| `zakup` | `apps/orders/models.py`, `apps/orders/constants.py`, `apps/orders/views.py`, `apps/payments/stripe_client.py` |
| `sprzedaz` | `apps/payments/stripe_client.py`, `apps/payments/services.py`, `apps/users/models.py` |
| `wysylka` | `apps/shipping/models.py`, `apps/shipping/inpost.py`, `apps/shipping/furgonetka.py` |
| `negocjacje` | `apps/offers/models.py`, `apps/offers/views.py` |
| `zamowienia` | `apps/orders/models.py`, `apps/orders/tasks.py`, `apps/orders/views.py` |
| `bezpieczenstwo` | `apps/orders/models.py`, `apps/core/moderation.py` |
| `ogolne` | No additional code files |

## Step 2: Generate Q&A

For each category (or single category if argument provided):
- Generate **5-15 Q&A pairs**
- Questions must sound like real users asking in Polish
- Answers must be factual, 1-3 sentences, grounded in information from source files
- Every answer MUST have at least one `source_files` entry
- Do NOT invent features or details not found in source files

### Question types (mix required)

Each category MUST include a mix of these 4 types. Not every type applies to every category, but aim for at least 3 types per category.

| Type | Pattern | Example |
|------|---------|---------|
| **How-to** | "Jak...?" | "Jak złożyć ofertę na ogłoszenie?" |
| **Troubleshooting** | "Co zrobić gdy...?" / problem statement | "Płatność nie przeszła — co zrobić?" |
| **Policy/rules** | "Jakie są zasady...?" / "Czy mogę...?" | "Jakie przedmioty są zabronione?" |
| **Consequence** | "Co się stanie jeśli...?" | "Co się stanie jeśli nie wyślę paczki na czas?" |

Do NOT generate only how-to questions. Real users also need troubleshooting, rules, and consequence answers.

### Role tagging

Each Q&A MUST include a `role` field indicating who the question is relevant to:

| Value | When to use |
|-------|------------|
| `kupujacy` | Question is from buyer's perspective |
| `sprzedajacy` | Question is from seller's perspective |
| `obie` | Relevant to both roles (account, general, security) |

## Step 3: Write JSON

Create directory if missing. Write JSON to output path (overwrites existing file completely).

### EXACT JSON Schema

Follow this schema precisely. Do NOT add extra fields, rename fields, or change the structure.

```json
{
  "generated_at": "2026-03-25T14:30:00Z",
  "categories": [
    {
      "slug": "wysylka",
      "name": "Wysyłka",
      "questions": [
        {
          "id": "wysylka-001",
          "question": "Ile mam czasu na wysłanie paczki?",
          "answer": "Masz 3 dni robocze od momentu opłacenia zamówienia. Jeśli nie nadasz paczki w tym czasie, zamówienie zostanie automatycznie anulowane, a kupujący otrzyma zwrot.",
          "role": "sprzedajacy",
          "source_files": ["docs/business-logic.md", "apps/orders/tasks.py"],
          "tags": ["inpost", "termin", "anulowanie"]
        }
      ]
    }
  ]
}
```

### Field rules (MUST follow exactly)

| Field | Rule |
|-------|------|
| `generated_at` | ISO 8601 datetime string at root level, NOT inside a `meta` object |
| `categories` | Array at root level |
| `categories[].slug` | Field name is `slug` (NOT `id`). Use exact slugs from the category table below |
| `categories[].name` | Polish display name from the category table below |
| `categories[].questions` | Field name is `questions` (NOT `qa`) |
| `questions[].id` | Format: `{slug}-{NNN}` where NNN is zero-padded 3 digits. Example: `wysylka-001`, `konto-003`. The prefix MUST match the category slug |
| `questions[].question` | Natural language question in Polish |
| `questions[].answer` | Factual answer, 1-3 sentences, Polish |
| `questions[].role` | One of: `kupujacy`, `sprzedajacy`, `obie` |
| `questions[].source_files` | Array of relative file paths that back the answer |
| `questions[].tags` | Array of 2-5 lowercase Polish keywords |

### Common mistakes to AVOID

- Do NOT wrap `generated_at` in a `meta` object — it goes at root level
- Do NOT use `id` for category field — use `slug`
- Do NOT use `qa` for questions array — use `questions`
- Do NOT use arbitrary ID prefixes like `ogl-1` or `og-1` — use the category slug: `wystawianie-001`, `ogolne-001`
- Do NOT skip zero-padding in IDs — `001` not `1`
- Do NOT add extra top-level fields like `version`, `platform`, `language`, `description`
- Do NOT strip Polish diacritics — use proper characters: ą, ć, ę, ł, ń, ó, ś, ź, ż (e.g., "wysłanie" not "wyslanie", "Wysyłka" not "Wysylka")
- Do NOT use fancy quotation marks inside JSON strings — the characters „ " " ' ' will break JSON parsing. Use plain single quotes or no quotes instead (e.g., write `opcję Cena do negocjacji` not `opcję „Cena do negocjacji"`)

## Categories

Use EXACTLY these slugs and names:

| Slug | Name | Scope |
|------|------|-------|
| `konto` | Konto i rejestracja | Email/SMS verification, profile, account deletion, GDPR |
| `wystawianie` | Wystawianie ogłoszeń | Creating listings, photos, AI auto-fill, edit, pause, expiry, promotions |
| `zakup` | Zakup | How to buy, checkout, payment methods (BLIK/card/transfer) |
| `sprzedaz` | Sprzedaż | Commission, payouts, Stripe onboarding, IBAN |
| `wysylka` | Wysyłka | InPost lockers/courier, tracking, deadlines, Furgonetka oversized |
| `negocjacje` | Negocjacje | Offers, counter-offers, expiry, limits |
| `zamowienia` | Zamówienia i reklamacje | Order statuses, disputes, refunds, auto-complete, cancellation |
| `bezpieczenstwo` | Bezpieczeństwo | Escrow, buyer/seller protection, moderation, reporting |
| `ogolne` | Ogólne | What is wedkowisko.pl, contact, terms, privacy |

## Step 4: Validate JSON

After writing the file, run this validation command:

```bash
python3 -c "import json; json.load(open('OUTPUT_PATH')); print('JSON valid')"
```

If validation fails, fix the JSON and re-write the file. Common cause: fancy quotation marks (`„"`) inside string values that contain an ASCII `"` which terminates the JSON string.

## Step 5: Report Summary

After writing the file, print a summary table:

```
| Kategoria | Liczba Q&A |
|-----------|-----------|
| konto     | 8         |
| ...       | ...       |
| TOTAL     | 82        |
```

## Constraints

- Polish language only
- Do NOT modify any templates, views, or database
- Do NOT create presentation layer
- Overwrite mode only — re-running replaces the file completely
- Single-category mode writes JSON with only that one category
- **Cross-check all monetary amounts, limits, and deadlines against actual code constants** (e.g., `MIN_TRANSACTION_AMOUNT` in `apps/orders/constants.py`, `SHIPPING_DEADLINE_DAYS`, commission rates). Never guess numeric values — grep for the constant and use the exact value from code. If a value is not found in code, check `docs/business-logic.md`. If still unclear, mark the answer with `[VERIFY]` for manual review.
- **Answers are for end users, NOT developers.** NEVER mention: model/class names (Order, Listing, FAQQuestion), library/framework names (Django, Celery, Stripe Connect, NudeNet, GPT-4o), API names (ShipX API), technical terms (escrow, webhook, PaymentIntent), database concepts, or internal architecture. Use plain language a regular user would understand. Examples:
  - BAD: "System AI (GPT-4o vision) analizuje zdjęcia"
  - GOOD: "System automatycznie rozpoznaje przedmiot na zdjęciu"
  - BAD: "Pieniądze są przechowywane przez Stripe (licencjonowaną instytucję płatniczą)"
  - GOOD: "Pieniądze są bezpiecznie przechowywane do momentu potwierdzenia odbioru"
  - BAD: "filtr wulgarnych słów z wykrywaniem l33t speak, detekcja NSFW (NudeNet)"
  - GOOD: "automatyczny filtr treści i zdjęć"
