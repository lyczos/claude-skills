# EU R&D Funding Applications - Reference Material

Heavy reference for the `writing-eu-rd-applications` skill. Consult when generating application text.

---

## 1. Frascati Manual - 5 Criteria for R&D Classification

ALL five criteria must be met simultaneously for an activity to qualify as R&D (B+R).

### 1.1 Nowatorskość (Novelty)

**Definition:** R&D must aim at new findings/knowledge. Must produce results that are new for the enterprise and not yet used in the industry.

**What counts in IT:**
- New algorithm solving a problem no existing algorithm solves adequately
- Novel combination of ML techniques not previously applied to this domain
- New method of processing/analyzing data that produces qualitatively different results

**What does NOT count:**
- Applying known solution in new business context (adaptation ≠ novelty)
- Copying/imitating existing solutions
- Reverse engineering

**Phrase bank:**
- "Dotychczasowe rozwiązania nie pozwalają na..."
- "W literaturze naukowej nie opisano metody, która..."
- "Proponowane podejście stanowi nowatorską kombinację..."
- "Wyniki projektu będą nowe zarówno dla Wnioskodawcy, jak i dla branży na poziomie krajowym"
- "Analiza stanu wiedzy wykazała lukę badawczą w zakresie..."

### 1.2 Twórczość (Creativity)

**Definition:** R&D must be based on original, non-obvious concepts and hypotheses. Requires creative human input — cannot be routine application of existing procedures.

**What counts in IT:**
- Designing a novel architecture to solve a specific technical constraint
- Formulating original hypothesis about data processing approach
- Creative combination of techniques from different domains (cross-pollination)

**What does NOT count:**
- Following established design patterns without modification
- Standard software engineering practices
- Routine configuration/customization

**Phrase bank:**
- "Zaproponowano oryginalną koncepcję polegającą na..."
- "Opracowanie wymaga twórczego wkładu zespołu badawczego w zakresie..."
- "Przyjęta hipoteza badawcza zakłada, że..."
- "Koncepcja rozwiązania opiera się na nieoczywistym połączeniu..."
- "Rozwiązanie problemu wymaga opracowania autorskiej metody..."

### 1.3 Nieprzewidywalność (Uncertainty)

**Definition:** At the start of R&D, the outcome cannot be precisely determined — there is uncertainty about results, costs, time, or method. If the outcome is certain, it's not R&D.

**What counts in IT:**
- Uncertainty whether algorithm will achieve target performance parameters
- Unknown if proposed architecture will scale to required load
- Risk that training data may be insufficient for desired accuracy
- Uncertain how novel technique will behave on edge cases

**What does NOT count:**
- Implementation risk (e.g., "will we finish on time?")
- Business risk (e.g., "will users adopt it?")
- Known solution with uncertain effort estimate

**Phrase bank:**
- "Na obecnym etapie wiedzy nie jest możliwe jednoznaczne określenie, czy..."
- "Istnieje niepewność badawcza dotycząca..."
- "Ryzyko technologiczne polega na tym, że..."
- "Nie można z góry przewidzieć, czy proponowane podejście pozwoli osiągnąć..."
- "Wynik prac nie jest przesądzony — możliwe scenariusze obejmują..."
- "Kluczowa bariera technologiczna, której pokonanie jest niepewne, to..."

### 1.4 Systematyczność (Systematic)

**Definition:** R&D must be planned and organized — conducted according to defined methodology, with clear goals, timeline, budget, and resource allocation.

**What counts in IT:**
- Defined research methodology with phases, milestones, deliverables
- Documented hypotheses, test protocols, acceptance criteria
- Allocated budget and team with defined roles
- Structured experimentation plan (e.g., ablation studies, benchmarks)

**Phrase bank:**
- "Prace zostaną przeprowadzone zgodnie z zaplanowaną metodyką obejmującą..."
- "Każdy etap zakończy się mierzalnym kamieniem milowym..."
- "Metodologia badawcza przewiduje iteracyjne podejście z walidacją na każdym etapie..."
- "Wyniki prac będą dokumentowane w formie raportów badawczych..."
- "Zaplanowano następujące fazy realizacji projektu..."

### 1.5 Transferowalność / Możliwość odtworzenia (Transferability/Reproducibility)

**Definition:** R&D results must lead to knowledge that can be transferred or reproduced by others. Results must be documented — including negative results ("dead ends" are also valuable).

**What counts in IT:**
- Technical documentation of methods and results
- Published benchmarks and performance metrics
- Patent applications or trade secret documentation
- Source code with documentation enabling reproduction
- Scientific publications or technical reports

**Phrase bank:**
- "Wyniki prac zostaną udokumentowane w formie..."
- "Wiedza wytworzona w projekcie zostanie zabezpieczona poprzez..."
- "Dokumentacja techniczna umożliwi odtworzenie wyników przez..."
- "Planowane formy ochrony wyników: zgłoszenie patentowe / wzór użytkowy / tajemnica przedsiębiorstwa"
- "Nawet w przypadku wyników negatywnych, wiedza o nieefektywnych podejściach zostanie udokumentowana"

---

## 2. Technology Readiness Levels (TRL)

| TRL | Description | R&D Category | Typical IT Activities |
|-----|-------------|-------------|----------------------|
| 1 | Basic principles observed | Basic research (NOT in SMART) | Theoretical analysis, literature review |
| 2 | Technology concept formulated | Industrial research (BP) | Concept design, feasibility analysis |
| 3 | Experimental proof of concept | Industrial research (BP) | PoC in lab environment, algorithm prototype |
| 4 | Technology validated in lab | Industrial research (BP) | Lab prototype, controlled experiments |
| 5 | Technology validated in relevant environment | Experimental development (PR) | Prototype in simulated production environment |
| 6 | Technology demonstrated in relevant environment | Experimental development (PR) | Technology demonstrator, beta version |
| 7 | System prototype in operational environment | Experimental development (PR) | Prototype working in target environment |
| 8 | System complete and qualified | Experimental development (PR) | Final testing, certification |
| 9 | Proven in operational environment | NOT R&D (implementation) | Commercial deployment |

**Key rule for SMART:** Project must start at TRL ≤ 8 and include experimental development (PR). Indicate starting TRL and target TRL clearly.

---

## 3. Industrial Research vs Experimental Development

### Badania przemysłowe (Industrial Research) — art. 2 pkt 85 Rozporządzenia KE 651/2014

**Definition:** Planned research aimed at acquiring new knowledge and skills for developing new products, processes, or services, or for significant improvement of existing ones.

**In IT context:**
- Researching new algorithm approaches, testing hypotheses in controlled conditions
- Building proof-of-concept to validate theoretical approach
- Analyzing existing approaches and formulating novel methodology
- Studying feasibility of new technical approach
- Creating prototypes in laboratory/simulated environment

**Aid intensity:** 70% (micro/small) / 60% (medium) / 50% (large) + possible 15pp bonus

### Prace rozwojowe (Experimental Development) — art. 2 pkt 86 Rozporządzenia KE 651/2014

**Definition:** Acquiring, combining, shaping, and using available knowledge and skills to develop new or improved products, processes, or services.

**In IT context:**
- Building functional prototype and testing in near-real conditions
- Validating system performance against target parameters
- Integration testing of novel components in realistic environment
- Performance optimization and scaling experiments
- Creating MVP with novel technical components for validation

**Aid intensity:** 45% (micro/small) / 35% (medium) / 25% (large) + possible 15pp bonus

**MANDATORY in SMART:** Every project must include experimental development.

### What is NOT R&D (excluded from both categories)

- Routine software modifications to existing products
- Standard debugging and bug fixing
- Building applications with known tools/frameworks without novelty
- Data migration, system administration
- Standard testing (QA) without novel methodology
- Creating websites, standard e-commerce, CRUD apps
- UI/UX design without novel interaction research
- Deploying to cloud, CI/CD setup
- Training team on existing technologies

---

## 4. SMART (FENG) Scoring Criteria — 2026

### Stage I — Obligatory (PASS/FAIL)

| # | Criterion | Assessment |
|---|-----------|-----------|
| 1 | Applicant eligibility | pass / fail |
| 2 | R&D character of project | pass / fail |

### Stage II — Scored (max 22 pts)

| # | Criterion | Points | Minimum |
|---|-----------|--------|---------|
| 1 | **Innovation of R&D results** | 0/3/5/7/9 | 3 |
| 2 | **Implementation potential** | 0/3/4/5/6/7 | 3 |
| 3 | **Work plan and expenditures** | 0/3/4/5 | 3 |
| 4 | Strategic Intervention Area | 0/1 | 0 |

### Stage II — Obligatory (PASS/FAIL)

| # | Criterion |
|---|-----------|
| 5 | Potential to execute project |
| 6 | Financial capacity |
| 7 | No excluded activities |
| 8 | Incentive effect |
| 9 | National Smart Specialization (KIS) alignment |
| 10-13 | Equality, EU Charter, disability rights, sustainability |
| 14 | Project indicators |
| 15 | SME cooperation (large enterprises only) |

### Tiebreakers (in order)
1. Innovation score
2. Implementation potential score
3. National Key Cluster membership
4. Strategic Intervention Area
5. Women's participation in R&D team

---

## 5. Innovation Scoring Detail (0-9 pts)

### Base (3 pts) — ALL required:
- Features/functionalities result from planned R&D work
- Significant advantage over solutions on Polish market
- Innovation indicators include measurable parameters
- Meets identified user needs better than existing solutions

### Bonus points:
- **+2 pts** (→5): Potential to transform market or create new market
- **+2 pts** (→7): Eco-innovation OR digital innovation OR positive social impact (national level)
- **+2 pts** (→9): Both of the above

### What evaluators look for:
- **Named competitor** with specific product: "System X firmy Y oferuje..."
- **Measurable parameters** with baseline and target values
- **Innovation at minimum Polish market level** (not just new for the company)
- **Product innovation** = new/improved product or service
- **Process innovation** = new business process for production (NOT logistics, marketing, IT systems)

---

## 6. Implementation Potential Scoring (0-7 pts)

### Base (3 pts):
- Implementation within 5 years of R&D completion
- At least one form: own production, licensing, IP sale
- No IP barriers
- Realistic implementation plan
- Profitability confirmed by financial model

### Bonus:
- **+2 pts:** Implementation in own business operations
- **+2 pts:** IP protection (patent, utility model, industrial design)
- **+1 pt:** Implementation on Polish territory

---

## 7. Work Plan Scoring (0-5 pts)

### Base (3 pts):
- Tasks clearly defined, logically ordered, leading to result
- Research methodology adequate and justified
- Tasks correctly classified (BP vs PR)
- Each task has measurable milestone with verification method

### Bonus:
- **+1 pt:** Experimental development (PR) > 50% of R&D costs
- **+1 pt:** Subcontracting < 25% of eligible costs

---

## 8. Financial Limits

| Parameter | Value |
|-----------|-------|
| Minimum R&D eligible costs | 3 mln PLN |
| Maximum aid (SME) | 50 mln PLN |
| Maximum aid (large) | 70 mln PLN |
| Max subcontracting | 70% of R&D eligible costs |
| Max supplementary tasks | 15% of R&D costs |

---

## 9. Phrase Bank — Structured by Section

### Problem badawczy/technologiczny

**Opening (identifying the problem):**
- "Zidentyfikowany problem badawczy dotyczy braku skutecznych metod..."
- "Kluczową barierą technologiczną jest..."
- "Obecne rozwiązania dostępne na rynku nie pozwalają na..."
- "Dotychczasowe podejścia oparte na [X] nie zapewniają wymaganego poziomu..."

**Justifying R&D need:**
- "Rozwiązanie powyższego problemu wymaga przeprowadzenia prac badawczo-rozwojowych, ponieważ..."
- "Nie istnieje gotowe rozwiązanie, które można by zaadaptować — konieczne jest opracowanie..."
- "Problem ma charakter badawczy, gdyż wymaga wytworzenia nowej wiedzy w zakresie..."

**Uncertainty:**
- "Na obecnym etapie nie jest pewne, czy możliwe jest osiągnięcie..."
- "Główne ryzyka technologiczne obejmują: (1)..., (2)..., (3)..."
- "Wynik prac jest nieprzewidywalny ze względu na..."

### Metoda badawcza

**Approach justification:**
- "Przyjęta metodyka badawcza opiera się na..."
- "Wybór metody jest uzasadniony następującymi przesłankami: (1)..., (2)..."
- "Podejście iteracyjne pozwoli na systematyczną walidację hipotez na każdym etapie"
- "Metodologia obejmuje następujące fazy: badania przemysłowe (TRL X→Y) oraz prace rozwojowe (TRL Y→Z)"

**Task descriptions:**
- "W ramach zadania zostaną przeprowadzone..."
- "Celem zadania jest weryfikacja hipotezy, że..."
- "Zadanie obejmuje zaprojektowanie, implementację i walidację..."
- "Kamień milowy: [deliverable] zweryfikowany poprzez [method] z kryterium akceptacji [value]"

### Innowacyjność

**Comparison with competitors:**
- "Analiza rozwiązań dostępnych na rynku polskim wykazała, że..."
- "Najbliższe rozwiązanie konkurencyjne — [Nazwa] firmy [Producent] — oferuje [parametr] na poziomie [wartość], podczas gdy planowany rezultat projektu zakłada osiągnięcie [wartość docelowa]"
- "Żadne z dostępnych rozwiązań nie łączy jednocześnie [cecha 1] oraz [cecha 2]"

**Innovation indicators:**
- "Wskaźnik innowacyjności: [nazwa parametru] — wartość bazowa: [X] [jednostka] → wartość docelowa: [Y] [jednostka]"
- "Innowacja produktowa polega na wprowadzeniu na rynek [nowego/znacząco ulepszonego] [produktu/usługi], który..."
- "Przewaga nad rozwiązaniami konkurencyjnymi wyraża się w następujących parametrach: ..."

### Zespół projektowy

- "Kierownik B+R — [imię nazwisko] — posiada [X]-letnie doświadczenie w prowadzeniu prac badawczo-rozwojowych w zakresie..."
- "Doświadczenie potwierdzone udziałem w projektach B+R: (1) [nazwa projektu], (2)..."
- "Wymiar zaangażowania w projekcie: [X] EPC (ekwiwalent pełnego czasu pracy)"
- "Zespół posiada kompetencje niezbędne do realizacji zaplanowanych prac, w szczególności w zakresie..."

### Ryzyka

- "Zidentyfikowane ryzyka technologiczne: ..."
- "W przypadku nieosiągnięcia zakładanych parametrów w ramach [podejście A], przewidziano scenariusz alternatywny polegający na..."
- "Prawdopodobieństwo wystąpienia: [niskie/średnie/wysokie]. Wpływ na projekt: [opis]. Działania mitygujące: [opis]"

---

## 10. National Smart Specializations (KIS) — IT-Relevant

| KIS | Name | IT Application Examples |
|-----|------|----------------------|
| KIS 1 | Zdrowe społeczeństwo | MedTech, health AI, telemedicine platforms |
| KIS 2 | Innowacyjne technologie i procesy przemysłowe | Industry 4.0, IoT, digital twins, predictive maintenance |
| KIS 6 | Gospodarka o obiegu zamkniętym | Waste optimization AI, sustainable supply chain |
| KIS 7 | Zrównoważona energetyka i transport | Smart grid, EV charging optimization, route optimization |
| KIS 11 | Elektronika i fotonika | Embedded systems, signal processing |
| KIS 12 | Inteligentne sieci i technologie informacyjno-komunikacyjne | AI/ML, cybersecurity, big data, cloud, NLP, computer vision |
| KIS 13 | Inteligentne technologie kreacyjne | GameDev, VR/AR, creative AI |

**KIS 12 is the most common for IT/software projects.** Always justify alignment with specific KIS in the application.

---

## 11. Milestone Template

| Element | Description |
|---------|-------------|
| **Nazwa** | Short, descriptive name of milestone |
| **Parametr** | Measurable parameter that confirms achievement |
| **Wartość docelowa** | Specific numeric target |
| **Sposób weryfikacji** | How it will be measured/confirmed |
| **Wpływ nieosiągnięcia** | What happens if milestone is not met (continue with modifications / stop / alternative path) |

**Example for IT project:**

| Element | Value |
|---------|-------|
| Nazwa | Walidacja modelu klasyfikacji w warunkach laboratoryjnych |
| Parametr | Dokładność klasyfikacji (F1-score) na zbiorze testowym |
| Wartość docelowa | F1-score ≥ 0.92 |
| Sposób weryfikacji | Ewaluacja na wydzielonym zbiorze testowym (20% danych), raport z metrykami |
| Wpływ nieosiągnięcia | Modyfikacja architektury modelu i ponowne testy; w przypadku braku poprawy — zmiana podejścia na metodę ensemble |
