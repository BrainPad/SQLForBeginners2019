/*
2-2-1. WHERE① 比較条件
userテーブルで、誕生日が2006年1月1日以降の人のbirthday, genderの
2つのフィールドについて5件分データ取得し、誕生日の昇順に並び替えて表示する。
*/

SELECT
	birthday
	,gender
FROM
	`user`
WHERE
	birthday >= '2006-01-01'
ORDER BY
	birthday
LIMIT
	5
;
