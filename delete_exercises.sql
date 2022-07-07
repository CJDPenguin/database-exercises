USE codeup_test_db;
SELECT 'Delete albums released album after 1991' AS 'Caption';
DELETE FROM albums WHERE release_date > 1991;
SELECT 'Delete all disco albums' AS 'Caption';
DELETE FROM albums WHERE genre = 'Disco';
SELECT 'Delete Whitney Houston albums' AS 'Caption';
DELETE FROM albums WHERE artist = 'Whitney Houston';