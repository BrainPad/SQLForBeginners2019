/*
2-1-4. SELECT③ ORDER BY, SELECT *
receiptテーブルの全てのフィールドに5件分、データ取得する
ただし、user_idの昇順、read_atの降順に並び替える
*/

SELECT
  *
FROM
  receipt
ORDER BY
  user_id ASC, read_at DESC 
LIMIT
  5
;