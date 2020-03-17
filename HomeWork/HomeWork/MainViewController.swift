//
//  MainViewController.swift
//  HomeWork
//
//  Created by Marta on 2/17/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
//   override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//       super.init(nibNameOrNil, bundle: nibBundleOrNil)
//   }
//
//    required init?(coder: NSCoder) {
//        fatalError("init coder has not been imp")
//    }
    @IBOutlet weak var WelcomeLabel: UILabel!
    
    
    var loginInfo : String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       WelcomeLabel.text = loginInfo
    }
    @IBAction func profileButtonIsPushed(_ sender: Any) {
        performSegue(withIdentifier: "profileVC", sender: nil)
    }
    
}

//@IBAction func profileButtonIsPushed(_ sender: Any) {
//    performSegue(withIdentifier: "profileVC", sender: nil)
//}
