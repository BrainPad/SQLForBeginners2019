/*
4-1-2.サブクエリ パターン①
receipt_itemテーブルで、user_id, priceとpriceの中央値を並べて表示する。
ただし、user_id（integer型に変換）の昇順で5件表示とし、中央値はMEDIAN()を使用せよ。
*/

SELECT
	user_id
    , price
	, (SELECT STDDEV_POP(price) FROM receipt_item) AS stddev_price
FROM
	receipt_item
ORDER BY
	CAST(user_id AS SIGNED), price
LIMIT 5
;
