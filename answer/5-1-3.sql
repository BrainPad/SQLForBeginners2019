/*
5-1-3. ウィンドウ関数② ランク付け関数群
receipt_itemテーブルで、receipt_id毎にpriceの最大値を求める。
・receipt_idが10以下のデータを対象
*/

SELECT
	receipt_id
	,price AS max_price
	,name
FROM
	(SELECT
          *
          ,ROW_NUMBER() OVER(PARTITION BY receipt_id ORDER BY price DESC) AS seq
     FROM
          receipt_item) AS ri
WHERE
 	seq = 1 AND receipt_id <= 10
ORDER BY
 	receipt_id
;
