/*
2-2-4. WHERE④ 範囲条件BETWEEN
receiptテーブルで、paid_atが2010年1月1日から2010年12月31日までであるデータについて、
id, user_id, paid_atを5件分取得する。ただし、paid_atの昇順に並び替える。
*/

SELECT  
    id
    ,user_id
    ,paid_at
FROM
    receipt
WHERE
    paid_at BETWEEN '2010-01-01' AND '2010-12-31'
ORDER BY
    paid_at
LIMIT
    5
;
