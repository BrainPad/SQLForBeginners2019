/*
4-1-3. サブクエリ パターン②
receipt_itemテーブルとuserテーブルを用いて、name(商品名)が’カップラーメンA‘を
買ったことのある人を性別にカウントする。
*/

SELECT
	gender
    , COUNT(id)
FROM
	`user`
WHERE
	id IN (SELECT DISTINCT user_id
				FROM receipt_item
				WHERE name = 'カップラーメンA' )
GROUP BY
	gender
ORDER BY
	gender
;