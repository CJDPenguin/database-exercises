USE codeup_test_db;
DROP DATABASE IF EXISTS albums;
CREATE DATABASE albums(
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50),
    name VARCHAR(50) NOT NULL,
    release_date INT UNSIGNED,
    sales DECIMAL (4,2)
    genre VARCHAR(20)
    PRIMARY KEY (id)
);