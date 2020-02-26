//
//  TableViewController.swift
//  HomeWork
//
//  Created by Marta on 2/17/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDelegate {
   
        
        @IBOutlet weak var tableView: UITableView!
        let students = StudentsDataStorage()
        var studentNumber = 0
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
            studentNumber = indexPath.row
            performSegue(withIdentifier: "profileVC", sender: nil)
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = students
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinationVC = segue.destination as? ProfileViewController
            destinationVC?.studentNumber = studentNumber
        }
        
    }
