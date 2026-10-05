# SQL Auto Grading – UPDATE and DELETE Student Records

## Question

Update the department of student Karthik from 101 to 103
and delete the student record whose StudentID is 1002.

## Database

CollegeDB

## Table

Student

## Requirements

1. Update Karthik's DepartmentID from 101 to 103.

2. Delete the student whose StudentID is 1002.

3. Display all student records after performing the
   UPDATE and DELETE operations.

## Expected Result

Before:

| StudentID | StudentName | Gender | DepartmentID |
|---|---|---|---|
| 1001 | Arun | Male | 101 |
| 1002 | Divya | Female | 102 |
| 1003 | Karthik | Male | 101 |

After:

| StudentID | StudentName | Gender | DepartmentID |
|---|---|---|---|
| 1001 | Arun | Male | 101 |
| 1003 | Karthik | Male | 103 |

## Student Instructions

Write your SQL statements in:

solution.sql

Do not create a new Student table.
