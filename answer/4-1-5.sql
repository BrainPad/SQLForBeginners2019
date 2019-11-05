/*
4-1-5. WITH句　サブクエリの代用
receiptテーブルを用いて、「1ユーザーあたりのレシート登録数」の平均値を求める。
ヒント
① 先ずはWITH句を使って、ユーザーIDごとのレシート登録数を集計する。
（ユーザーID,レシート登録数の２列からなる表を作成する）
② ①で作成した表から、レシート登録数の平均を計算する。
*/

WITH tbl AS(
      SELECT
              user_id
              , COUNT(DISTINCT id) AS receipt_count
      FROM receipt
      GROUP BY user_id
)
SELECT
      AVG(receipt_count)
FROM
      tbl
;
