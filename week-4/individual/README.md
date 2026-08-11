# Week 4 – SQL analüüs

## Ülesanne

Analüüsida tootekategooriaid, toodete müüki ja toodete hinnajärjestust kategooriate sees, kasutades `GROUP BY`, `HAVING` ja window function'e.

## Tulemused

### 1. Tooted kategooriate kaupa

| Kategooria | Tooteid | Keskmine hind | Min hind | Max hind |
|---|---:|---:|---:|---:|
| meeste_riided | 82 | 189.91 | 48.85 | 374.54 |
| jalanõusid | 73 | 214.10 | 58.49 | 434.08 |
| laste_riided | 70 | 85.30 | 22.70 | 168.82 |
| naiste_riided | 70 | 192.58 | 32.93 | 351.33 |
| aksessuaarid | 67 | 125.71 | 13.53 | 231.13 |

### 2. Müüdud toodete kogus kategooriate kaupa

| Kategooria | Müüdud kokku | Keskmine hind |
|---|---:|---:|
| meeste_riided | 4121 | 188.61 |
| jalanõusid | 3737 | 213.26 |
| laste_riided | 3686 | 84.70 |
| naiste_riided | 3604 | 195.55 |
| aksessuaarid | 3231 | 122.88 |

### 3. Toodete hinnajärjestus kategooria sees

Window function `ROW_NUMBER()` abil järjestati iga kategooria tooted hinna järgi kahanevalt.

Kõige kõrgema hinnaga tooted olid:
- aksessuaarid – Luksuslik metallist labakindad – 231.13 €
- jalanõusid – Õhuline sünteetiline sporditossud – 434.08 €

## Järeldused

Kõige rohkem erinevaid tooteid on meeste riiete kategoorias (82 toodet).

Kõige kõrgem keskmine hind on jalanõude kategoorias (214.10 €).

Kõige madalama keskmise hinnaga kategooria on laste riided (85.30 €).

Müüdud koguse järgi on esikohal meeste riided 4121 müüdud ühikuga.

Window function võimaldas järjestada tooted iga kategooria sees eraldi ning leida kategooria kõige kallimad tooted.