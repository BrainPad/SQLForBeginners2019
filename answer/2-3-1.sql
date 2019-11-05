/*
2-3-1. GROUP BY① 集計関数
receipt_itemテーブルで、receipt_id毎にグループ化したレコードの金額priceの
最小値を求め、5件分表示する。
*/

SELECT
	receipt_id
	,MIN(price) AS min_price
FROM
	receipt_item
GROUP BY
	receipt_id
LIMIT
	5
;