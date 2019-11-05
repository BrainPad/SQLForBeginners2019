/*
2-1-3. SELECT② COUNT, DISTINCT, AS
receipt_itemテーブルのreceipt_idフィールドに対して
「重複を許した場合の件数」
「重複を除いた場合の件数」をそれぞれ取得し、列名を別名に変更する 
*/

SELECT
 	COUNT(receipt_id) AS r_id
 	,COUNT(DISTINCT receipt_id) AS distinct_r_id
FROM
 	receipt_item
;
