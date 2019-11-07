/*
 SECTION: Group exercises
 DESCRIPTION: Write a valid SQL query to solve each problem.
 */


-- A) Get all the unique department names.

-- B) Get the top 10 female students (first_name, last_name, age, gpa) with the best GPA scores and order by age (asc).

-- C) Count the number of male/female students that are at least 25 years old.

-- D) Get the number of male/female students that were accepted

-- E) Get the min, average, and max GPA of the accepted male students that are less than 20 years old.

-- F) Get the number of enrollments to courses that take longer than 2 years to finalize.

-- G) Get the number of male/female student that will take a course from the 'Statistics' department.


-- A) Count the number of courses per department
/*SECTION: Individual exercises
 DESCRIPTION: Write a valid SQL query to solve each problem.
 */

-- A) Count the number of courses per department
SELECT
    count(department)
FROM
    course
;

-- B) How many male/female students were accepted?
SELECT
    s.gender,
    count(s.gender)
FROM
    student s INNER JOIN enrollment e ON s.id = e.student_id -- INNER JOIN = product cartesiano -- s=student; e=enrollment
WHERE
    e.approved = 1
GROUP BY
    s.gender
;

-- C) How many students were accepted per course?
SELECT
    c.name,
    count(c.name)
FROM
     enrollment e INNER JOIN course c ON e.course_id = c.id
WHERE
    e.approved = 1
GROUP BY
    c.name
;

-- D) What's the average age and gpa per course?
SELECT
    AVG(s.gpa) AS "Average of student's GPA",
    AVG(s.age) AS "Average of student's age"
FROM
    student s INNER JOIN enrollment e ON s.id = e.student_id
WHERE
    e.approved = 1
;