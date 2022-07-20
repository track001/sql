/* Create groceries database */
CREATE TABLE groceries (id INTEGER PRIMARY KEY, item TEXT, quantity INTEGER, aisle INTEGER);
INSERT INTO groceries VALUES (1, "Bananas", 4, 7);
INSERT INTO groceries VALUES(2, "Peanut Butter", 1, 2);
INSERT INTO groceries VALUES(3, "Dark Chocolate Bars", 2, 2);
INSERT INTO groceries VALUES(4, "Ice cream", 1, 12);
INSERT INTO groceries VALUES(5, "Cherries", 1, 2);
INSERT INTO groceries VALUES(6, "Chocolate syrup", 0, 4);

/* Select groceries in aisle 5 or greater and order from least to greatest */
SELECT * FROM groceries WHERE aisle > 5 ORDER BY aisle;

/*
QUERY RESULTS
Id	Name	quantity	aisle
_______________________________
1	Bananas	4	7
4	Ice cream	1	12
*/
