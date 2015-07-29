USE codeup_test_db;

SELECT 'All of my albums' AS 'Albums';
SELECT * FROM albums;
UPDATE albums 
SET sales_in_millions = sales_in_millions * 10;


SELECT 'Albums released before 1971' AS 'release_date';
SELECT album FROM albums WHERE release_date < 1990;
UPDATE albums
SET release_date = 1800
WHERE release_date < 1990; 


SELECT 'Records by MJ' AS 'Records';
SELECT artist FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';



