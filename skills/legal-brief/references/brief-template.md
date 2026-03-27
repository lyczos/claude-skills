# Szablon LEGAL_BRIEF.md

Use this structure exactly when generating or updating the brief.

---

```markdown
# Brief dla prawnika — [Nazwa projektu]

*Wersja: 1.0 | Wygenerowano: [DATA]*
*Autor: Claude (analiza kodu) | Do weryfikacji przez: [imie/rola]*

> **Cel dokumentu:** Brief techniczny dla radcy prawnego przygotowujacego regulamin serwisu.
> Opisuje mechanizmy dzialajace w kodzie, ktore wymagaja uregulowania prawnego.
> Nie jest dokumentem prawnym — jest materialem wejsciowym do tworzenia regulaminu.

---

## Changelog

| Wersja | Data | Co zmieniono |
|--------|------|--------------|
| 1.0 | [DATA] | Pierwsza wersja |

---

## 1. Charakterystyka serwisu

**Typ serwisu:** [np. marketplace C2C / SaaS / platforma negocjacyjna]
**Model biznesowy:** [skad pochodzi przychod serwisu]
**Role uzytkownikow:** [np. Kupujacy / Sprzedajacy / Admin]
**Rynek docelowy:** [PL / EU / inne]

---

## 2. Kwestie wymagajace uregulowania w regulaminie

> MANDATORY format for each item:
> - **Opis:** what happens in the system (functional language, no code)
> - **Ryzyko prawne:** why this needs a ToS clause
> - **Sugerowany zakres zapisu:** what the ToS should address specifically
> - **Priorytet:** KRYTYCZNY / WYSOKI / SREDNI
>
> Any item where users can be charged money = KRYTYCZNY.

### 2.1 Oplaty i rozliczenia

[Prowizje, oplaty za wystawienie, subskrypcje, automatyczne obciazenia, moment pobrania oplaty,
kto od kogo pobiera, co sie dzieje przy nieudanej platnosci. Include concrete examples with amounts.]

### 2.2 Zwroty i reklamacje

[Czy system obsluguje zwroty, kto inicjuje, w jakim terminie, co sie dzieje z pieniedzmi,
czy jest mechanizm reklamacji w UI, prawo do odstapienia 14 dni dla konsumentow]

### 2.3 Odpowiedzialnosc stron transakcji

[Kto jest strona umowy (platforma jako posrednik czy strona transakcji?), odpowiedzialnosc
za niewykonanie umowy, za wady produktu/uslugi, za dane w ogloszeniach]

### 2.4 Weryfikacja tozsamosci i KYC

[Czy i jak serwis weryfikuje uzytkownikow, co jest wymagane do wystawienia / zakupu,
co sie dzieje przy nieudanej weryfikacji, przechowywanie dokumentow]

### 2.5 Tresci uzytkownikow (UGC) i prawa autorskie

[Upload zdjec/plikow, kto ma prawa do tresci, licencja dla platformy, moderacja,
usuwanie tresci naruszajacych prawa, odpowiedzialnosc za tresci uzytkownikow]

### 2.6 Ochrona przed wyludzeniami i naduzyciami

[Mechanizmy wykrywania naduzyc widoczne w kodzie, co grozi za naruszenia,
jak serwis reaguje na zgloszenia, jakie dzialania sa zakazane]

### 2.7 Blokowanie i usuwanie kont

[Kiedy konto moze byc zablokowane/usuniete, co sie dzieje ze srodkami,
czy uzytkownik jest informowany, mozliwosc odwolania, czas przechowywania danych po usunieciu]

### 2.8 Dane osobowe i RODO

[Jakie dane sa zbierane (z kodu), do czego uzywane, integracje z zewnetrznymi serwisami
ktore przetwarzaja dane, mechanizmy zgod, czy sa mechanizmy realizacji praw RODO.
Include table: data category | what's collected | where processed | legal basis]

### 2.9 Spory miedzy uzytkownikami

[Czy serwis ma mechanizm dispute resolution, kto rozstrzyga spory, w jakim trybie,
czy platforma moze wstrzymac srodki podczas sporu]

### 2.10 Integracje zewnetrzne

[Z jakimi zewnetrznymi serwisami integruje sie platforma (platnosci, wysylka, auth),
gdzie odpowiedzialnosc platformy sie konczy, co sie dzieje przy awarii serwisu zewnetrznego.
List each integration with its DPA status.]

### 2.11 Pozostale kwestie specyficzne dla projektu

[Wszystko co nie pasuje do powyzszych kategorii a jest istotne prawnie]

---

## 3. Pytania otwarte — decyzje biznesowe przed napisaniem regulaminu

> These are questions that CANNOT be answered from code alone.
> They require business owner decisions BEFORE the lawyer can draft the ToS.

1. [Pytanie 1]
2. [Pytanie 2]
...

---

## 4. Rekomendowany zakres regulaminu

> Proposed chapter structure for the ToS, derived from the analysis above.

1. Definicje
2. Rodzaj i zakres uslug
3. Warunki rejestracji i korzystania z konta
4. [kolejne rozdzialy wynikajace z analizy]
...

---

## 5. Czerwone flagi — blokery przed produkcja

> Things that are MISSING or INCOMPLETE and MUST exist before production launch.
> Be brutally honest — the goal is protection against real legal risk.

Format each item:
- **Co brakuje:** concrete gap
- **Dlaczego bloker:** legal or business consequence
- **Co zrobic:** brief recommendation
- **Odpowiedzialny:** PRAWNIK / DEVELOPER / BIZNES

### Braki formalno-prawne

| # | Co brakuje | Dlaczego bloker | Co zrobic | Kto |
|---|-----------|-----------------|-----------|-----|
| 1 | | | | |

### Luki w przeplywach transakcyjnych

| # | Co brakuje | Dlaczego bloker | Co zrobic | Kto |
|---|-----------|-----------------|-----------|-----|
| 1 | | | | |

### Ryzyka bezpieczenstwa i naduzyc

| # | Co brakuje | Dlaczego bloker | Co zrobic | Kto |
|---|-----------|-----------------|-----------|-----|
| 1 | | | | |

### Brakujace dokumenty i strony

| # | Co brakuje | Dlaczego bloker | Co zrobic | Kto |
|---|-----------|-----------------|-----------|-----|
| 1 | | | | |

---

> **Podsumowanie:** Lacznie **X blokerow krytycznych**, **Y do uzupelnienia przed startem**.
>
> **Top 3 priorytety:**
> 1. [Najwazniejsze]
> 2. [Drugie]
> 3. [Trzecie]
```

## Key differences from a "natural" brief

The template enforces structure that agents skip without guidance:

1. **Priority classification** (KRYTYCZNY/WYSOKI/SREDNI) — without this, all items appear equal weight
2. **"Sugerowany zakres zapisu"** per item — without this, the brief describes risks but doesn't tell the lawyer what to write
3. **Structured red flags tables** by category — without this, blockers are a flat unstructured list
4. **Business questions separated** (section 3) — without this, legal and business decisions are mixed
5. **Recommended ToS structure** (section 4) — without this, the lawyer has to infer chapter organization
6. **Changelog** — enables incremental improvement across runs
7. **`[DO USTALENIA Z ZESPOLEM]` markers** — without this, agents silently assume unknown things
