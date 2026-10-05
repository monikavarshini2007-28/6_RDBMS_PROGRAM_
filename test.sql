-- ============================================================
-- SQL AUTO GRADING TEST
-- UPDATE AND DELETE STUDENT RECORDS
-- ============================================================

USE CollegeDB;


-- ============================================================
-- TEST 1: Student table exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Student table exists'
    ELSE 'FAIL - Student table does not exist'
END AS Result
FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_SCHEMA = 'CollegeDB'
AND TABLE_NAME = 'Student';


-- ============================================================
-- TEST 2: Karthik exists
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Karthik record exists'
    ELSE 'FAIL - Karthik record does not exist'
END AS Result
FROM Student
WHERE StudentName = 'Karthik';


-- ============================================================
-- TEST 3: Karthik DepartmentID = 103
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Karthik DepartmentID updated to 103'
    ELSE 'FAIL - Karthik DepartmentID should be 103'
END AS Result
FROM Student
WHERE StudentName = 'Karthik'
AND DepartmentID = 103;


-- ============================================================
-- TEST 4: Karthik is no longer in DepartmentID 101
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 0
    THEN 'PASS - Karthik is no longer in DepartmentID 101'
    ELSE 'FAIL - Karthik still has DepartmentID 101'
END AS Result
FROM Student
WHERE StudentName = 'Karthik'
AND DepartmentID = 101;


-- ============================================================
-- TEST 5: StudentID 1002 is deleted
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 0
    THEN 'PASS - StudentID 1002 deleted successfully'
    ELSE 'FAIL - StudentID 1002 still exists'
END AS Result
FROM Student
WHERE StudentID = 1002;


-- ============================================================
-- TEST 6: Arun remains in the table
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 1
    THEN 'PASS - Arun record remains'
    ELSE 'FAIL - Arun record is missing'
END AS Result
FROM Student
WHERE StudentID = 1001
AND StudentName = 'Arun'
AND Gender = 'Male'
AND DepartmentID = 101;


-- ============================================================
-- TEST 7: Total records = 2
-- ============================================================

SELECT
CASE
    WHEN COUNT(*) = 2
    THEN 'PASS - Student table contains 2 records'
    ELSE 'FAIL - Student table should contain 2 records'
END AS Result
FROM Student;


-- ============================================================
-- DISPLAY FINAL STUDENT RECORDS
-- ============================================================

SELECT
    StudentID,
    StudentName,
    Gender,
    DepartmentID
FROM Student
ORDER BY StudentID;
