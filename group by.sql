SELECT	
	product_name,
	COUNT(order_id), /*행의 개수가 몇개인가를 알려줌?*/
	SUM(stock),
	MIN(stock),
	MAX(stock),
	SUM(stock) /COUNT(1),
	AVG(stock)

FROM
	order_mst
	
GROUP BY
	product_name;
/*-------------------------------------------------------------------*/	
SELECT
	product_name,
	SUM(price * stock) AS total_price /*상품가격에 대한 총합?.*/
FROM
	order_mst
GROUP BY
	product_name;

/*--------------------------------------------------------------------*/
SELECT
	product_name,
	price * stock AS total_price 
FROM
	order_mst;
	
/*--------------------------------------------------------------------*/

SELECT	
	product_name,
	COUNT(order_id) AS order_count, 
	SUM(stock) AS stock_sum,
	MIN(stock),
	MAX(stock) AS max_stock,
	SUM(stock) /COUNT(1),
	AVG(stock)

FROM
	order_mst
	
where
	stock >50
GROUP BY
	product_name
	
HAVING
	max_stock > 49
	
ORDER BY
	order_count desc,
	stock_sum desc
	
LIMIT 0,2;
/*-----------------------------------------------------------------------------*/
	
SELECT
	*
FROM
	order_mst
LIMIT 3,3; /*3번 부터 3개*/
