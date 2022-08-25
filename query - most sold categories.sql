SELECT 
c.name,
sum(op.quantity)
FROM  categories c
JOIN Products p
ON p.category_id = c.name
JOIN order_products op
ON p.id = product_id
Group by c.name
