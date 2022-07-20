/* Climbing Shoe Store Database
La Sportiva
5.10
Mad Rock
Butora
Tenaya
Eolv
*/

CREATE TABLE shoes (id INTEGER PRIMARY KEY, brand TEXT, quantity INTEGER, price INTEGER, size INTEGER);

INSERT INTO shoes VALUES (1, "La Sportiva", 4, 120, 7);
INSERT INTO shoes VALUES (2, "5.10", 3, 180, 8);
INSERT INTO shoes VALUES (3, "Mad Rock", 5, 200, 6.5);
INSERT INTO shoes VALUES (4, "Butora", 2, 160, 7.5);
INSERT INTO shoes VALUES (5, "Tenaya", 8, 95, 5.5);
INSERT INTO shoes VALUES (6, "Evolv", 1, 205, 9.5);

SELECT * FROM shoes;

/*
QUERY RESULTS
id	brand	quantity	price	size
__________________________________
1	La Sportiva	4	120	7
2	5.10	3	180	8
3	Mad Rock	5	200	6.5
4	Butora	2	160	7.5
5	Tenaya	8	95	5.5
6	Evolv	1	205	9.5
*/

/* Order items by price (least to greatest) */
SELECT price, brand FROM shoes GROUP BY price;

/*
price	brand
______________
95	Tenaya
120	La Sportiva
160	Butora
180	5.10
200	Mad Rock
205	Evolv
*/

/* Display statistics about shoes size 6 and higher ordered by brand*/
SELECT * FROM shoes WHERE size > 6 ORDER BY brand (alphabetical order);

/*
id	brand	quantity	price	size
2	5.10	3	180	8
4	Butora	2	160	7.5
6	Evolv	1	205	9.5
1	La Sportiva	4	120	7
3	Mad Rock	5	200	6.5
*/

/* Display statistics about shoes price 100-200 ordered by price */
SELECT * FROM shoes WHERE price BETWEEN 100 and 200 ORDER BY price;
/*
id	brand	quantity	price	size
_________________________________
1	La Sportiva	4	120	7
4	Butora	2	160	7.5
2	5.10	3	180	8
3	Mad Rock	5	200	6.5
*/
