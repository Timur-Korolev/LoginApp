//
//  ViewController.swift
//  LoginApp
//
//  Created by admin on 10/2/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var usrenameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    let user = Account(username: "User", password: "password")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func LoginIsPressed() {
        if usrenameTextField.text != user.getUsername &&
            passwordTextField.text != user.getPassword {
            print("1")
        } else {
            print ("\(usrenameTextField.text ?? "1")")
            shouldPerformSegue(withIdentifier: "loginSuccessful", sender: nil)
            
        }
    }
    
}

