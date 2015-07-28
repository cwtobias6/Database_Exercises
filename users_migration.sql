USE codeup_test_db;

DROP TABLE IF EXISTS users;

CREAT TABLE users(
	id INT UNSIGNED NOT NULL AUTO_INCREMENT,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	username VARCHAR(255) NOT NULL,
	password CHAR(255) NOT NULL,
	current_account_balance DECIMAL(15,2),
	phone_number VARCHAR(13),
	member_since DATE NOT NULL,
	last_loggin_time DATETIME NOT NULL




	PRIMARY KEY (id),
	UNIQUE(username)
);