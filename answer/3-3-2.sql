/*
3-3-2. 文字列関数② LENGTH, REPLACE
receipt_itemテーブルでnameの文字数を取得する(length_nameとする)。また、nameの ’スナック’ を ’ポテトチップス’ に置換する(replace_nameとする)。
・抽出フィールド：id, name, length_name, replace_name
・idの昇順で5件分表示
*/

SELECT
	id
	,name
	,LENGTH(name) AS length_name
	,REPLACE(name, 'スナック', 'ポテトチップス') AS replace_name
FROM
	receipt_item
ORDER BY
	id
LIMIT
 	5
;
