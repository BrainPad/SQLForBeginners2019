/*
2-1-2. SELECT① 特定フィールドの抽出
receipt_item からid, user_id, receipt_id, priceのデータを2件取得する
*/

SELECT
	id
	,user_id
	,receipt_id
	,price
FROM
	receipt_item
LIMIT
	2
;