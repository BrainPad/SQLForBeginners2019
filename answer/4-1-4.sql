/*
4-1-4. サブクエリ パターン③
receipt_itemテーブルとuserテーブルを用いて、1ユーザーあたりの累計合計金額の平均値を求める。
ヒント
① サブクエリでuser_idでグループ化し、合計金額を求める　
② サブクエリの結果をもとに平均値を求める
*/

SELECT
	AVG(tbl.sum_price)
FROM
		(SELECT		user_id
					  		,SUM(price) AS sum_price
			    FROM	receipt_item
		GROUP BY	user_id) AS tbl
;
