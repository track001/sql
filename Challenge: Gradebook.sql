/* Gradebook database to track student info: grades, name, number grade, and percent of activities completed */
CREATE TABLE student_grades (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    number_grade INTEGER,
    fraction_completed REAL);
    
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
    VALUES ("Winstonia", 82, 0.9045);
    
/*    
DATABASE SCHEMA
student_grades6 rows
id (PK)INTEGER
nameTEXT
number_gradeINTEGER
fraction_completedREAL
*/

/* Select all of the rows, display the name, number_grade, and percent_completed */
/* Can be computed by multiplying and rounding the fraction_completed column */
SELECT name, number_grade, ROUND(fraction_completed * 100) AS percent_completed 
 FROM student_grades; 
 
 /* QUERY RESULTS
name	number_grade	percent_completed
Winston	90	81
Winnefer	95	90
Winsteen	85	91
Wincifer	66	71
Winster	76	50
Winstonia	82	90
*/

/* Create a table that shows how many students have earned which letter_grade.
Output the letter_grade by using CASE with the number_grade column:
'A' > 90
'B' > 80
'C' > 70
'F' otherwise
Then use COUNT with GROUP BY to show the number of students with each of those grades. */
SELECT COUNT(*),
    CASE
        WHEN number_grade > 90 THEN "A"
        WHEN number_grade > 80 THEN "B"
        WHEN number_grade > 70 THEN "C"
        ELSE "F"
    END AS "letter_grade"
FROM student_grades
GROUP BY letter_grade
/* QUERY RESULTS
COUNT(*)	letter_grade
1	A
3	B
1	C
1	F
*/
