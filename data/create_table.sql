DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
	id									BIGINT NOT NULL
	, gender						INTEGER
	, birthday						DATE			
	, state_code					CHAR(8)
	, last_login					DATE
	, create_date				TIMESTAMP
);

DROP TABLE IF EXISTS receipt;
CREATE TABLE receipt (
	id									BIGINT NOT NULL
	, user_id						BIGINT
	, shop_name				VARCHAR(200)
	, paid_at						TIMESTAMP
	, read_at						TIMESTAMP
	, update_at					TIMESTAMP
);

DROP TABLE IF EXISTS receipt_item;
CREATE TABLE receipt_item (
	id									BIGINT NOT NULL
	, user_id						BIGINT
	, receipt_id					BIGINT
	, name							VARCHAR(200)
	, price							FLOAT8
);