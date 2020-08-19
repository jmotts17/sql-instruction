-- 				Notes
-- INT					Whole Numbers
-- DECIMAL(10,4) 		Decimale Numbers - Exact Value
-- VARCHAR(1)			String of text length of 1
-- BLOB					Binary Large Object, Stores large data
-- DATE					'YYYY-MM-DD'
-- TIMESTAMP			'YYYY-MM-DD HH:MM:SS' Used for recording

-- First thing you want to do is describe your schema/define tables --- then insert data.

-- Constraints: Not Null, Unique, Default, Auto_Increment --- Help you control flow and data entry

-- <, >, <=, >=, =, <>, AND, OR

-- ---------------------------------------------------------------------------------------

-- Deletes the table
DROP TABLE student;

-- Creates a  table
CREATE TABLE student (
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20),
    major VARCHAR(20) DEFAULT 'undecided'
    -- PRIMARY KEY(student_id) --- Alternate way to define primary keys
);

-- Select all data from the table
SELECT * FROM student;

-- Describes what data a student is made of based on the created table
DESCRIBE student; 

-- Adding and Dropping a column to the table
ALTER TABLE student ADD gpa DECIMAL(3,2);
ALTER TABLE student DROP COLUMN gpa;

-- Inserting data into a table
INSERT INTO student VALUES(1, 'Jack', 'Biology');
INSERT INTO student VALUES(2, 'Kate', 'Sociology');
INSERT INTO student VALUES(3, 'Claire', "Chemistry");
INSERT INTO student VALUES(4, 'Jack', 'Biology');
INSERT INTO student VALUES(5, 'Mike', 'Computer Science');

-- How to specify which columns you want to enter
INSERT INTO student(student_id, name) VALUES(3, 'Claire');

-- Update
UPDATE student 
SET major = 'undecided';

-- Delete
DELETE FROM student
WHERE student_id = 5;

-- Limit
SELECT * FROM student 
LIMIT 2;

-- In
SELECT * FROM student
WHERE name IN ('Claire', 'Kate', 'Mike');
