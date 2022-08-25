SELECT op.product_id,
sum(op.quantity)
FROM order_products op
group by op.product_id