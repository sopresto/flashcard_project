CREATE DATABASE flashcard_db;
USE DATABASE flashcard_db;

CREATE TABLE card_values(
	id INT NOT NULL AUTO_INCREMENT,
	question TEXT NOT NULL,
	define TEXT NOT NULL,
	PRIMARY KEY (id)
	);
