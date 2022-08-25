SELECT *,
CONCAT(ROUND(100 - (promo_price / price * 100)), "%") as discount
FROM Products
WHERE promo_price < price