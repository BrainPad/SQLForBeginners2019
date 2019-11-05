/*
2-3-2. GROUP BY② HAVING 集計結果に条件指定
receipt_itemテーブルで、receipt_id毎にグループ化し、レコードの金額priceに対して最大値を求め、最大値が1000以上のものを5件取得する。
ただし、求めた最大値の昇順に並び替えて表示する。
*/

SELECT
    receipt_id
    ,MAX(price) AS max_price
FROM
    receipt_item
GROUP BY
    receipt_id
HAVING
    MAX(price) >= 1000
ORDER BY
    MAX(price)
LIMIT
  5
;