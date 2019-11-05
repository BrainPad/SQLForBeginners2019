/*
2-2-5. WHERE⑤ IN条件
receipt_itemテーブルで、nameが文字列「まぐろ」「りんご」であるデータについて、
id, user_id, receipt_id, nameを10件取得する。
*/

SELECT
    id
    ,user_id
    ,receipt_id
    ,name
FROM
    receipt_item
WHERE
    name IN ('まぐろ', 'りんご')
LIMIT
    5
;
