/*
3-3-1. 文字列関数 SUBSTRING
userテーブルで、last_loginからを月を取り出す(last_login_monthとする)。
・抽出フィールド：id, last_login, last_login_month
・idの昇順で5件分表示
*/

SELECT
	id
	,last_login
	,SUBSTRING(last_login, 6, 2) AS last_login_month
FROM
	`user`
ORDER BY
	id
LIMIT
	5
;
