/*
2-2-3. WHERE③ パターンマッチングLIKE
receiptテーブルで、shop_nameが文字列「B」で終わるデータについて、
全てのフィールドを5件分取得する
*/
SELECT
	*
FROM
	receipt
WHERE
	shop_name LIKE '%B'
LIMIT
	5
;
