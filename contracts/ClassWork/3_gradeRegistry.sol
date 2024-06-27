/*Problem Statement 3: Classroom Grades Registry

Objective: Build a contract GradesRegistry to record and retrieve students' grades.

Use a struct named Grade that includes properties for the student's ID and their grade.
Implement a mapping from student ID to their Grade.
Write a function for adding or updating a student's grade.
Develop a function to retrieve a student's grade by their ID.*/

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradeRegistry{
     struct Grade{
        uint sId;
        string Grade;
     }

     mapping(uint=>Grade) public Grades;

     function addingGrade(uint uid,string memory grade ) public {
        Grades[uid]=Grade(uid,grade);
     }
}