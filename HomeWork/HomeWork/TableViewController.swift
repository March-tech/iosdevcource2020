//
//  TableViewController.swift
//  HomeWork
//
//  Created by Marta on 2/18/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct Student {
        var firstName: String
        var secondName: String
        var age: Int
        var mail: String
    }

    var arrayOfStudents = [
        Student(firstName: "name1", secondName: "secondname1", age: 10, mail: "email1"),
        Student(firstName: "name2", secondName: "secondname2", age: 22, mail: "email2"),
        Student(firstName: "name3", secondName: "secondname3", age: 3, mail: "email3"),
        Student(firstName: "name4", secondName: "secondname4", age: 90, mail: "email4"),
        Student(firstName: "name5", secondName: "secondname5", age: 12, mail: "email5"),
        Student(firstName: "name6", secondName: "secondname6", age: 45, mail: "email6"),
        Student(firstName: "name7", secondName: "secondname7", age: 47, mail: "email7"),
        Student(firstName: "name8", secondName: "secondname8", age: 48, mail: "email8"),
        Student(firstName: "name9", secondName: "secondname9", age: 56, mail: "email9"),
        Student(firstName: "name98", secondName: "secondname98", age: 46, mail: "email98"),
        Student(firstName: "name10", secondName: "secondname10", age: 36, mail: "email10"),
        Student(firstName: "name12", secondName: "secondname12", age: 24, mail: "email12"),
        Student(firstName: "name13", secondName: "secondname13", age: 51, mail: "email13"),
        Student(firstName: "name14", secondName: "secondname14", age: 10, mail: "email14"),
        Student(firstName: "name15", secondName: "secondname15", age: 12, mail: "email15"),
    ]


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfStudents.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let studentCell = tableView.dequeueReusableCell(withIdentifier: "student", for: indexPath)

        let studentFN = arrayOfStudents[indexPath.row]
        studentCell.textLabel?.text = studentFN.firstName

        return studentCell

    }

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//           performSegue(withIdentifier: "profileStudentVC", sender: nil)
//       }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


}
