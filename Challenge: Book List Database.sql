/* Database to store favorite books:
Columns include id, book, and rating.
Book list-
Project Hail Mary (3) 
The Lion, The Witch, and the Wardrobe (5)
Paper Towns (4)
*/

CREATE TABLE books (id INTEGER PRIMARY KEY, book TEXT, rating INTEGER);

INSERT INTO books VALUES (1, "Project Hail Mary", 3);
INSERT INTO books VALUES (2, "The Lion, The Witch, and the Wardrobe", 5);
INSERT INTO books VALUES (3, "Paper Towns", 4);
SELECT * FROM books;

/*
QUERY RESULTS
Id	Book	Rating /5
____________________
1	Project Hail Mary	3
2	The Lion, The Witch, and the Wardrobe	5
3	Paper Towns	4
*/
