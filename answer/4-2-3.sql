/*
4-2-3. LEFT JOIN
receipt_itemテーブル(左表)とuserテーブル(右表)を、userテーブルのidとreceipt_itemテーブルのuser_idを用いて外部結合する。※receipt_itemテーブルidの昇順で5件分表示
・抽出フィールド：receipt_item テーブルid, name ／ userテーブル id, gender
・receipt_itemテーブルのid（integer型に変換） >= 135を対象とし、昇順で5件分表示する。
*/

SELECT
	ri.id AS receipt_id
	,u.id AS user_id
	,u.gender
	,ri.name
FROM
	receipt_item AS ri
LEFT JOIN
	`user` AS u
ON ri.user_id = u.id
WHERE
	CAST(ri.id AS SIGNED) >= 135
ORDER BY
	CAST(ri.id AS SIGNED)
LIMIT
	5
;
