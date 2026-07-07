CREATE TABLE orders (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INT
);

INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2026-01-15', 150.00, 101),
(2, '2026-01-16', 200.00, 102),
(3, '2026-01-15', 150.00, 101), -- Same order_id to test DISTINCT
(4, '2026-02-10', 350.00, 103),
(5, '2026-02-20', 120.00, 101),
(6, '2026-03-05', 500.00, 104);
SELECT 
    EXTRACT(YEAR FROM order_date) AS sales_year,
    EXTRACT(MONTH FROM order_date) AS sales_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    orders
GROUP BY 
    EXTRACT(YEAR FROM order_date),
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    sales_year DESC, 
    sales_month DESC;
