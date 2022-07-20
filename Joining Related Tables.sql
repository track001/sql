CREATE TABLE students (id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    email TEXT,
    phone TEXT,
    birthdate TEXT);
/*
DATABASE SCHEMA
students2 rows
id (PK)INTEGER
first_nameTEXT
last_nameTEXT
emailTEXT
phoneTEXT
birthdateTEXT
*/

INSERT INTO students (first_name, last_name, email, phone, birthdate)
    VALUES ("Peter", "Rabbit", "peter@rabbit.com", "555-6666", "2002-06-24");
INSERT INTO students (first_name, last_name, email, phone, birthdate)
    VALUES ("Alice", "Wonderland", "alice@wonderland.com", "555-4444", "2002-07-04");
    
CREATE TABLE student_grades (id INTEGER PRIMARY KEY,
    student_id INTEGER,
    test TEXT,
    grade INTEGER);

/*
student_grades4 rows
id (PK)INTEGER
student_idINTEGER
testTEXT
gradeINTEGER
*/

INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Nutrition", 95);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Nutrition", 92);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (1, "Chemistry", 85);
INSERT INTO student_grades (student_id, test, grade)
    VALUES (2, "Chemistry", 95);
    
SELECT * FROM student_grades;
/* QUERY RESULTS
QUERY RESULTS
id	student_id	test	grade
1	1	Nutrition	95
2	2	Nutrition	92
3	1	Chemistry	85
4	2	Chemistry	95
*/
    
/* cross join */
SELECT * FROM student_grades, students;
/*
id	student_id	test	grade	id	first_name	last_name	email	phone	birthdate
1	1	Nutrition	95	1	Peter	Rabbit	peter@rabbit.com	555-6666	2002-06-24
1	1	Nutrition	95	2	Alice	Wonderland	alice@wonderland.com	555-4444	2002-07-04
2	2	Nutrition	92	1	Peter	Rabbit	peter@rabbit.com	555-6666	2002-06-24
2	2	Nutrition	92	2	Alice	Wonderland	alice@wonderland.com	555-4444	2002-07-04
3	1	Chemistry	85	1	Peter	Rabbit	peter@rabbit.com	555-6666	2002-06-24
3	1	Chemistry	85	2	Alice	Wonderland	alice@wonderland.com	555-4444	2002-07-04
4	2	Chemistry	95	1	Peter	Rabbit	peter@rabbit.com	555-6666	2002-06-24
4	2	Chemistry	95	2	Alice	Wonderland	alice@wonderland.com	555-4444	2002-07-04
*/
/* implicit inner join */
SELECT * FROM student_grades, students
    WHERE student_grades.student_id = students.id;

/* id	student_id	test	grade	id	first_name	last_name	email	phone	birthdate
1	1	Nutrition	95	1	Peter	Rabbit	peter@rabbit.com	555-6666	2002-06-24
2	2	Nutrition	92	2	Alice	Wonderland	alice@wonderland.com	555-4444	2002-07-04
3	1	Chemistry	85	1	Peter	Rabbit	peter@rabbit.com	555-6666	2002-06-24
4	2	Chemistry	95	2	Alice	Wonderland	alice@wonderland.com	555-4444	2002-07-04
*/

/* explicit inner join - JOIN */
SELECT students.first_name, students.last_name, students.email, student_grades.test, student_grades.grade FROM students
    JOIN student_grades
    ON students.id = student_grades.student_id
    WHERE grade > 90;
 
 /* QUERY RESULTS
first_name	last_name	email	test	grade
Peter	Rabbit	peter@rabbit.com	Nutrition	95
Alice	Wonderland	alice@wonderland.com	Nutrition	92
Alice	Wonderland	alice@wonderland.com	Chemistry	95
*/
    
    
