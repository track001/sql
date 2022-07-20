/* Song table where queries are used to seleect song(s) */

CREATE TABLE songs (
    id INTEGER PRIMARY KEY,
    title TEXT,
    artist TEXT,
    mood TEXT,
    duration INTEGER,
    released INTEGER);
    
    
/*
DATABASE SCHEMA
songs
        8 rows
id (PK)INTEGER
titleTEXT
artistTEXT
moodTEXT
durationINTEGER
releasedINTEGER
*/

INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Bohemian Rhapsody", "Queen", "epic", 60, 1975);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Let it go", "Idina Menzel", "epic", 227, 2013);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will survive", "Gloria Gaynor", "epic", 198, 1978);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Twist and Shout", "The Beatles", "happy", 152, 1963);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("La Bamba", "Ritchie Valens", "happy", 166, 1958);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("I will always love you", "Whitney Houston", "epic", 273, 1992);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Sweet Caroline", "Neil Diamond", "happy", 201, 1969);
INSERT INTO songs (title, artist, mood, duration, released)
    VALUES ("Call me maybe", "Carly Rae Jepsen", "happy", 193, 2011);

/* Select all song titles */
SELECT title FROM songs;
/* QUERY RESULTS
title
Bohemian Rhapsody
Let it go
I will survive
Twist and Shout
La Bamba
I will always love you
Sweet Caroline
Call me maybe
*/

/* Select all songs that using OR to show the titles of songs that have an 'epic' mood or a release date after 1990. */
SELECT title FROM songs WHERE released > 1990 OR mood = "epic";
/* title
Bohemian Rhapsody
Let it go
I will survive
I will always love you
Call me maybe
*/

/* Select all songs using AND to show the titles of songs that have an 'epic' mood, released after 1990,and less than 4 minutes in duration. */
/* 4(60 seconds) = 240 seconds */
SELECT title FROM songs WHERE mood = "epic" AND released > 1990 AND duration < 240;

/*
title
Let it go
*/

