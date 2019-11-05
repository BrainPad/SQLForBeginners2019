/*
3-1-1. 条件式① CASE
userテーブルでstate_codeが’27’（大阪）であるユーザーの総数を求める。
（state_codeが’27’であるとき1、他は0のフラグを作成して合計する） 
*/

SELECT
	SUM(CASE WHEN state_code = '27' THEN 1 ELSE 0 END) AS `sum`
FROM
	`user`
;


/*
-- 別解
SELECT
	COUNT(DISTINCT CASE WHEN state_code = '27' THEN id ELSE NULL END)
FROM
	`user`
;
*/