/*
5-3-2. 横持ち→縦持ち
receiptテーブルのpaid_at, read_at, update_atを、
それぞれのフィールド名をxxx_at、値をdateとした縦持ちに変換する。
*/

-- 一時テーブル作成
CREATE TEMPORARY TABLE v_receipt AS(
SELECT
	id
	, 'paid_at' AS xxx_at
	, paid_at AS `date`
FROM
	receipt
UNION ALL
SELECT
	id
	, 'read_at' AS xxx_at
	, read_at AS `date`
FROM
	receipt
UNION ALL
SELECT
	id
	, 'update_at' AS xxx_at
	, update_at AS `date`
FROM
	receipt

)
;

-- データ取得
SELECT
  *
FROM
  v_receipt
ORDER BY
  id, xxx_at
LIMIT
  10
  ;
