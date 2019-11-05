/*
4-3-1. 一時テーブルの作成
userテーブルからcreate_dateが2013年2月のものを抽出し、一時テーブルuser_201302として保存せよ。
また、確認のため作成した一時テーブルuser_201302からデータを5件取得せよ。
*/

CREATE TEMPORARY TABLE user_201302 AS (
SELECT
	*
FROM
	`user`
WHERE
	create_date BETWEEN '2013-02-01'
	AND '2013-02-28' 
)
;

SELECT
	*
FROM
	user_201302
LIMIT
	5;