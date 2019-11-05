/*
3-1-2. 条件式② COALESCE
NULLをもつフィールド`null`と、NULLを整数0に置換したフィールド`co_null`を1件取得する。（テーブルは不要なので、FROM句も不要）
*/

SELECT 
	NULL AS `null`
	,COALESCE(NULL, 0)  AS co_null
;