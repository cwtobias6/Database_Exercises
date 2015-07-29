USE codeup_test_db;

SELECT artist AS 'Records not by Bruce' FROM ablums WHERE artist != 'Bruce Springsteen';
SELECT release_date AS 'Meat Loaf release date'FROM albums WHERE artist = 'Meat Loaf';
