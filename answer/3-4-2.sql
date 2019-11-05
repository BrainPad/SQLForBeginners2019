/*
3-4-2.年齢
userテーブルのbirthdayから、最終ログインの日付におけるユーザーの年齢を求める。
・抽出フィールド：id, last_login, birthday, age_at_last_login
・idの昇順で5件分表示
*/

SELECT
  id
  ,last_login
  ,birthday
  ,TRUNCATE((CAST(REPLACE(last_login,'-','') AS UNSIGNED) 
  - CAST(REPLACE(birthday,'-','') AS UNSIGNED)
  )/10000, 0) AS `age_at_last_login`
FROM
  `user`
ORDER BY
  id
LIMIT
  5
;