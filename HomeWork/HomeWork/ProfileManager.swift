//
//  ProfileManagerViewController.swift
//  HomeWork
//
//  Created by Marta on 2/21/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class ProfileManager{

    let students = StudentsDataStorage()
    var name = ""
    var surname = ""
    var age = ""
    var gender = ""
    
    init (studentNumber: Int) {
        studentDataForProfile(studentNumber: studentNumber)
    }
    
    func studentDataForProfile(studentNumber: Int) {
        students.studentsFromFile()
        name = students.arrayOfStudents[studentNumber].name
        surname = students.arrayOfStudents[studentNumber].surname
        age = students.arrayOfStudents[studentNumber].age
        gender = students.arrayOfStudents[studentNumber].gender
    }
}
