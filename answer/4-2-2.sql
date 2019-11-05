/*
4-2-2. INNER JOIN
receipt_itemテーブル（左表）とuserテーブル（右表）を、userテーブルのidとreceipt_itemテーブルのuser_idを用いて内部結合する。
・receipt_itemテーブルのidをinteger型に変換し、昇順で5件分表示
・抽出フィールド：receipt_item テーブルid, name ／ userテーブル id, gender
*/

SELECT
	ri.id AS receipt_id
	,u.id AS user_id
	,ri.name
	,u.gender
FROM
 	receipt_item AS ri
INNER JOIN
 	`user` AS u
ON ri.user_id = u.id
ORDER BY
	CAST(ri.id AS SIGNED)
LIMIT
	5
;
