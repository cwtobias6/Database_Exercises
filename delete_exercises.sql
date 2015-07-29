USE codeup_test_db;

SELECT release_date AS 'Released after 1991' FROM albums WHERE release_date >= 1991;
DELETE FROM albums WHERE release_date >= 1991;




SELECT genre AS "Disco Genre" FROM albums WHERE genre = 'Disco';
DELETE FROM albums WHERE genre = 'Disco';



SELECT artist AS "Whitney Htown" FROM albums WHERE artist = 'Whitney Houston';
DELETE FROM albums WHERE artist = 'Whitney Houston';