/*
5-1-2. ウィンドウ関数 集計関数群
receiptテーブルで、user_idで区切ったパーティション毎にCOUNTで集計を行う。
・user_idが3以下のデータを対象とする。
*/

SELECT
	user_id
	,COUNT(user_id) OVER(PARTITION BY user_id)
FROM
	receipt
WHERE
	user_id <= 3
ORDER BY
	user_id
;
