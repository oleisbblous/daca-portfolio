# Week 2: Data Cleaning

## Kvaliteedikontrolli tulemused

| Kontroll | Tulemus |
|---|---:|
| Duplikaatsed read | 5116 |
| NULL customer_id | 1487 |
| Tulevikukuupäevad | 0 |
| ID-de koguarv | 15234 |
| Unikaalsete ID-de arv | 15234 |

## Järeldused

- Tuvastati 5116 duplikaatset rida.
- 1487 real puudub `customer_id`.
- Tulevikukuupäevi ei leitud.
- Kõik `id` väärtused on unikaalsed.