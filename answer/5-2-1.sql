/*
5-2-1. EXISTS
userテーブルのレコードで、idがreceiptテーブルのuser_idとして存在していないものをカウントする。
*/

SELECT  
	COUNT(*)
FROM  
	`user` AS u
WHERE NOT EXISTS(
	SELECT    
		1  
	FROM    
		receipt AS r
	WHERE    
		r.user_id = u.id)

;