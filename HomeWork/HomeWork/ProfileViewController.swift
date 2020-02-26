//
//  ProfileViewController.swift
//  HomeWork
//
//  Created by Marta on 2/17/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var informationLabel: UILabel!
    
    var studentNumber = 0
    var studentNameLabel = "Name"
    var studentSurnameLabel = "Surname"
    var studentAgeLabel = "Age"
    var studentGenderLabel = "Gender"
    var infoPartTextLabel = """
 ed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?
"""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let studentData = ProfileManager(studentNumber: studentNumber)
        nameLabel.text = "Name: \(studentData.name)"
        surnameLabel.text = "Surname: \(studentData.surname)"
        ageLabel.text = "Age: \(studentData.age)"
        informationLabel.text = infoPartTextLabel
        switch studentData.gender {
        case "m":
            genderLabel.text = "Gender: male"
        case "f":
            genderLabel.text = "Gender: female"
        default:
            genderLabel.text = "Gender: unknown"
        }
    }
}
