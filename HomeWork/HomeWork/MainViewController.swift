//
//  MainViewController.swift
//  HomeWork
//
//  Created by Marta on 2/17/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var WelcomeLabel: UILabel!
    
    
    var loginInfo : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       WelcomeLabel.text = loginInfo
    }
    
}
