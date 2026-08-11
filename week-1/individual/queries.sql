SELECT channel, store_location, payment_method    FROM sales    LIMIT 10;

SELECT DISTINCT channel FROM sales;  

SELECT DISTINCT store_location FROM sales;

SELECT DISTINCT payment_method FROM sales;

SELECT * FROM sales    
WHERE channel = 'online'    
ORDER BY total_price DESC    
LIMIT 15;    

SELECT COUNT(*) AS puuduv_asukoht    
FROM sales    
WHERE store_location IS NULL;

SELECT COUNT(*) AS tehinguid   
FROM sales   
WHERE store_location IS NOT NULL   
ORDER BY tehinguid DESC;

SELECT COUNT(*) AS online_tehinguid   
FROM sales   
WHERE channel = 'online';

SELECT * FROM sales   
WHERE payment_method = 'sularaha'     AND store_location = 'Tartu'   
ORDER BY total_price DESC   
LIMIT 10; 

SELECT store_location, COUNT(*) AS tehinguid
FROM sales
WHERE store_location IS NOT NULL
GROUP BY store_location
ORDER BY tehinguid DESC;

SELECT COUNT(*) AS poe_tehinguid
FROM sales
WHERE channel = 'pood';

