/*
3-4-1. 日付関数 CURRENT_DATE, DATEDIFF
userテーブルで、birthdayの日付から現在の日付までの日数を計算する(date_diffとする)。
・抽出フィールド：id, birthday, current_date, date_diff
・idの昇順で5件分表示
*/


SELECT 
	id
	,birthday
	,CURRENT_DATE AS `current_date`
	,DATEDIFF(birthday, CURRENT_DATE) AS date_diff
FROM
 	`user`
ORDER BY
	id
LIMIT
	5
;
