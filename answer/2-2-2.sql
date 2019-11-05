/*
2-2-2. WHERE② 論理条件
userテーブルで、「性別が2(女性)」かつ「state_codeが'13'(東京)または'27'(大阪)」
である人の総数を取得する
*/

SELECT
	COUNT(*)
FROM
	`user`
WHERE
	gender = 2
	AND (state_code = '13' OR state_code = '27')
;
