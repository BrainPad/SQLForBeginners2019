/*
3-2-2. 型変換 CAST
userテーブルで、create_dateをtimestamp型→date型に変換する。
・抽出フィールド：id, create_date, 型変換後のcreate_date
・idの昇順で5件分表示
*/

SELECT
  id
  ,create_date
  ,CAST(create_date AS DATE) AS cast_create_date
FROM
  `user`
ORDER BY
  id
LIMIT
  5;
