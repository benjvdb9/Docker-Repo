CREATE DATABASE Intec;

USE Intec;

CREATE TABLE students(s_id int NOT NULL AUTO_INCREMENT, f_name VARCHAR(20), l_name VARCHAR(20), gender CHAR(1), PRIMARY KEY (s_id));

/*
SHOW TABLES;
DESCRIBE students;
*/

INSERT INTO students (f_name, l_name, gender)
VALUES ('Abul', 'Talukder', 'M'),
('Andreas', 'Van Landtschoote', 'M'),
('Annees', 'Jawareesh', 'M'),
('Taher', 'Baker', 'M'),
('Benjamin', 'Vandenbussche', 'M'),
('Ercan', 'Aydin', 'M'),
('Gokhan', 'Albayrak', 'M'),
('Mohammed', 'Alshagor', 'M'),
('Monica', 'Perez', 'F'),
('Nadia', 'Alshamousy', 'F'),
('Peter', 'Babczuk', 'M');

/*
SELECT * FROM students;
*/
