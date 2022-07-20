/* TODO List with a number of minutes it will take to complete each item.*/

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);

/* Insert another item into the to-do list with the estimated minutes it will take */
/* 40 minutes is a joke */
INSERT INTO todo_list VALUES (4, "Finish typing this challenge solution", 40);

/*
DATABASE SCHEMA
_____________________
to do list      3 rows
Id  (PK)          INTEGER
item             TEXT
minutes       INTEGER

QUERY RESULTS
aisle	SUM(quantity)
_______________________
2	9
4	1
7	56
12	1
*/

/* Select the SUM of minutes it will take to do all of the items on the TODO List */
SELECT SUM(minutes) FROM todo_list;

/* 
QUERY RESULTS
_________________
SUM(minutes)
105
*/
