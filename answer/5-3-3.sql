/*
5-3-3.縦持ち→横持ち
user, receiptテーブルを用いて、
都道府県(state_code)ごとの3〜5月の購入件数を表示する。
*/

SELECT
        state_code AS `都道府県コード`,
        COUNT(CASE WHEN `month` = '03' THEN `month` END) AS `3月`,
        COUNT(CASE WHEN `month` = '04' THEN `month` END) AS `4月`,
        COUNT(CASE WHEN `month` = '05' THEN `month` END) AS `5月`
FROM
        (
                SELECT
                        C.state_code,
                        SUBSTRING(A.paid_at, 6, 2) AS `month`
                FROM
                        receipt AS A
                                INNER JOIN
                                                `user` AS C
                                ON A.user_id = C.id ORDER BY state_code
        ) AS tbl
GROUP BY
        state_code
ORDER BY
        state_code
;
