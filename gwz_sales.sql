SELECT 
  sales.id AS sales_id,
  sales.date AS sales_date,
  ROUND(sales.amount,2) AS sales_amount,
  customers.name AS customer_name,
  products.name AS product_name
FROM `gwz_sales.sales` AS sales
JOIN `gwz_sales.customers` AS customers ON sales.customer_id = customers.id
JOIN `gwz_sales.products` AS products ON sales.product_id = products.id
WHERE sales.date >= '2023-01-01';
