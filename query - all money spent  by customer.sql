select c.id,
	c.name,
    SUM(op.quantity * p.promo_price)

FROM Customers c
	JOIN orders o on c.id = o.customer_id
	join order_products op on o.id = op.order_id
    join Products p on op.product_id = p.id
    Group by c.id