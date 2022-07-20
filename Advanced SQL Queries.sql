/* Complex queries using AND/OR */
CREATE TABLE exercise_logs
    (id INTEGER PRIMARY KEY AUTOINCREMENT,
    type TEXT,
    minutes INTEGER, 
    calories INTEGER,
    heart_rate INTEGER);
    
/*  
DATABASE SCHEMA
exercise_logs
        3 rows
id (PK)INTEGER
typeTEXT
minutesINTEGER
caloriesINTEGER
heart_rateINTEGER
*/


INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 30, 100, 110);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("biking", 10, 30, 105);
INSERT INTO exercise_logs(type, minutes, calories, heart_rate) VALUES ("dancing", 15, 200, 120);

SELECT * FROM exercise_logs WHERE calories > 50 ORDER BY calories;
/*
QUERY RESULTS
id	type	minutes	calories	heart_rate
__________________________________________
1	biking	30	100	110
3	dancing	15	200	12
*/

/* AND */
SELECT * FROM exercise_logs WHERE calories > 50 AND minutes < 30;
/* QUERY RESULTS
id	type	minutes	calories	heart_rate
__________________________________________
3	dancing	15	200	120
*/

/* OR */
SELECT * FROM exercise_logs WHERE calories > 50 OR heart_rate > 100;
/* QUERY RESULTS
id	type	minutes	calories	heart_rate
_________________________________________
1	biking	30	100	110
2	biking	10	30	105
3	dancing	15	200	120
*/
