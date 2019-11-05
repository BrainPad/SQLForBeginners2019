/*
5-1-4. ウィンドウ関数③ ラグ・リード関数群
receipt_itemテーブルで、user_idで区切ったパーティション毎にidの昇順に並び替え、priceについて1行後の値をlead1_price、2行後の値をlead2_priceとして取得する。
・抽出フィールド：user_id, id, price, lead1_price, lead2_price
・user_idが3以下のデータを対象
*/

SELECT
	user_id
	,id
	,price
	,LEAD(price,1) OVER(PARTITION BY user_id ORDER BY id) AS lead1_price
	,LEAD(price,2) OVER(PARTITION BY user_id ORDER BY id) AS lead2_price
FROM
	receipt_item
WHERE
	user_id <= 3
ORDER BY
	user_id, id
;
