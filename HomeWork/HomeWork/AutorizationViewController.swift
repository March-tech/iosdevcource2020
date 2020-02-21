//
//  AutorizationViewController.swift
//  HomeWork
//
//  Created by Marta on 2/17/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import UIKit

class AutorizationViewController: UIViewController {

    @IBOutlet weak var Login: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    @IBAction func LoginButtonPress(_ sender: Any) {
        
        //alertLogin
        
        if Login.text?.count == 0 {
            
        //alertControllerIninit
            let alertForLogin = UIAlertController(title: "Attention", message: "Please,enter your Login.", preferredStyle: .alert)
            
        //alertActionCancel
            let alertActionCancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            
        //add alertActionCancel
            alertForLogin.addAction(alertActionCancel)
            
        // show alertForLogin
            self.present(alertForLogin, animated: true, completion: nil)
        }
        
        //alertPassword
        
        if Password.text!.count < 7 {
            
        //alertControllerIninit
            let alertForPassword = UIAlertController(title: "Attention", message: "the password must be at least 7 characters", preferredStyle: .alert)
            
        //alertActionCancel
            let alertActionCancel = UIAlertAction(title: "Cancel", style: .default, handler: nil)
            
        //add alertActionCancel
            alertForPassword.addAction(alertActionCancel)
            
        // show alertForLogin
            self.present(alertForPassword, animated: true, completion: nil)
        }
        
    }
    
    //Login  -> MainViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

         let mVC = segue.destination as? MainViewController
        guard let infoToMVC = Login.text else {
            fatalError()
        }
//            let infoToMVC = Login.text ?? ""
        mVC?.loginInfo = "Welcome, \(infoToMVC)!"
        
        
    }
    
    
}
