USE employees;

DESCRIBE employees;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE salaries;
DESCRIBE titles;

USE codeup_test_db;
ALTER TABLE albums ADD UNIQUE (artist, name);
INSERT INTO albums (artist, name, release_date, sales, genre) VALUES ('Michael Jackson', 'Thriller', 1982, 50.2, 'Pop');