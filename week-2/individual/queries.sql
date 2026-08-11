-- Week 2: Data cleaning
CREATE TABLE sales_test AS
SELECT *
FROM sales;
ALTER TABLE sales_test
ADD COLUMN IF NOT EXISTS id SERIAL;
SELECT *
FROM sales;
SELECT invoice_id, COUNT(*) AS koopiate_arv
FROM sales_test
GROUP BY invoice_id
HAVING COUNT(*) > 1
ORDER BY koopiate_arv DESC;
SELECT COUNT(*) AS duplikaat_read
FROM sales_test
WHERE id NOT IN (
    SELECT MIN(id)
    FROM sales_test
    GROUP BY invoice_id
);
SELECT COUNT(*) AS null_customer_id
FROM sales_test
WHERE customer_id IS NULL;
SELECT COUNT(*) AS tuleviku_kuupaevad
FROM sales_test
WHERE sale_date > CURRENT_DATE;
SELECT COUNT(*) AS id_kokku,
       COUNT(DISTINCT id) AS id_unikaalsed
FROM sales_test;