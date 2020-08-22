/* Get familiar with the data, run several selects */
SELECT * FROM school_db.student;
SELECT * FROM school_db.course;
SELECT * FROM school_db.enrolled;

-- List all students, ordered by last name
SELECT * FROM student
ORDER BY lastName;

-- List all students, ordered by state
SELECT * FROM student
ORDER BY state;

-- How many students from each state?
SELECT state, count(*) FROM student
GROUP BY state;

-- Who is the oldest student?
SELECT * FROM student
ORDER BY birthday ASC
LIMIT 1;

-- Who is the oldest with subquery
SELECT * FROM student
WHERE birthday = (
SELECT min(birthday) FROM student);

-- Who is the youngest student?
SELECT * FROM student
ORDER BY birthday DESC
LIMIT 1;

-- What subject has the most classes?
SELECT subject, count(*) FROM course
GROUP BY subject
ORDER BY count(*) DESC;

-- List all grades ordered by quarter
SELECT grade, quarter FROM enrolled
	JOIN course
    ON enrolled.courseID = course.ID
    ORDER BY course.quarter;
    
-- List all grades ordered by last name including student & course name
SELECT lastName, firstName, subject, course.name, grade, quarter FROM enrolled
	JOIN course
    ON enrolled.courseID = course.ID
    JOIN student
    ON enrolled.studentID = student.id
    ORDER BY student.lastName;
    
-- List all grades ordered by courseId
SELECT courseID, grade FROM enrolled
ORDER BY courseID;

-- List all grades ordered by course (resolving courseId to course name)
SELECT grade, subject, course.name FROM enrolled
	JOIN course
    ON enrolled.courseID = course.ID
    ORDER BY course.id;

-- List all students not enrolled in a course… are there any?
SELECT * FROM student
LEFT JOIN enrolled
ON student.id = enrolled.studentID;

-- List all student enrollments… student name, course, grade by quarter
SELECT firstName, lastName, subject, courseID, grade, quarter FROM enrolled
JOIN student
ON enrolled.studentID = student.id
JOIN course
ON enrolled.courseID = course.id
ORDER BY quarter;

/* Student Enrollment Report
	- List all students: fname, lname
    - Course name, if enrolled
*/
select s.id, lastname, firstname, name
	from student
    left join enrolled
    ON student.id = enrolled.studentID
    left join course
    ON enrolled.courseID = course.id;
    