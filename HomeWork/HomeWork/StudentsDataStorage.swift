//
//  StudentsDataStorage.swift
//  HomeWork
//
//  Created by Marta on 2/28/20.
//  Copyright © 2020 Marta. All rights reserved.
//
import Foundation
import UIKit

class StudentsDataStorage : NSObject, UITableViewDataSource {
    
    var arrayOfStudents = [Student]()
    var dataFromFile = ""
    var studentNumber = 0
    
    override init() {
        super.init()
        studentsFromFile()
    }
    
    func studentsFromFile() {
        if let path = Bundle.main.path(forResource: "Names", ofType: "txt") {
            do {
                dataFromFile = try String(contentsOfFile: path)
            } catch {
                print("error: \(error)")
            }
        } else {
            print("file not found")
        }
        let arrayFromString = dataFromFile.split(separator: " ")
        arrayFromString.forEach { subStudent in
            let studentDetails = subStudent.split(separator: ".")
            let student = Student(name: String(studentDetails[0]),
                                  surname: String(studentDetails[1]),
                                  age: String(studentDetails[2]),
                                  gender: String(studentDetails[3])
            )
            arrayOfStudents.append(student)
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        studentsFromFile()
        return arrayOfStudents.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var studentsCell = UITableViewCell()
        let student = arrayOfStudents[indexPath.row]
//        studentsFromFile()
        switch student.gender {
        case "m": studentsCell = tableView.dequeueReusableCell(withIdentifier: "student2", for: indexPath)
        case "f": studentsCell = tableView.dequeueReusableCell(withIdentifier: "student1",for: indexPath)
        default:  studentsCell = tableView.dequeueReusableCell(withIdentifier: "error",for: indexPath)
        }
        studentsCell.textLabel?.text = "\(student.name) \(student.surname)"
        return studentsCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        studentNumber = indexPath.row

    
    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        true
    }

    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let student = arrayOfStudents[sourceIndexPath.row]
        arrayOfStudents.insert(student, at: destinationIndexPath.row)
        arrayOfStudents.remove(at: sourceIndexPath.row)
    }
}
}
