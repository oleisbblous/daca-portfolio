-- Week 4: Tootekategooriate analüüs

-- 1. Tooted kategooriate kaupa
SELECT
    p.category,
    COUNT(DISTINCT p.product_id) AS tooteid,
    ROUND(AVG(p.retail_price), 2) AS keskmine_hind,
    MIN(p.retail_price) AS min_hind,
    MAX(p.retail_price) AS max_hind
FROM products p
GROUP BY p.category
ORDER BY tooteid DESC;
-- 2. Kategooriad, kus laos on kokku üle 100 toote

SELECT
    p.category,
    SUM(s.quantity) AS muudud_kokku,
    ROUND(AVG(p.retail_price), 2) AS keskmine_hind
FROM products p
JOIN sales s
    ON p.product_id = s.product_id
GROUP BY p.category
HAVING SUM(s.quantity) > 100
ORDER BY muudud_kokku DESC;
-- 3. Toodete hinnajärjestus kategooria sees

SELECT
    p.product_name,
    p.category,
    p.retail_price,
    ROW_NUMBER() OVER (
        PARTITION BY p.category
        ORDER BY p.retail_price DESC
    ) AS koht_kategoorias
FROM products p
ORDER BY p.category, koht_kategoorias;