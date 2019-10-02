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
    
    // почему при объявлении этой кнопки в экстеншне выдает ошибку?
    let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSuccessful" {
            let accountVC = segue.destination as! AccountViewController
            accountVC.welcomeMessage = "Welcome, \(usrenameTextField.text!)!"
        }
    }
    
    @IBAction func loginPressed() {
        if isLoginSuccessful(username: usrenameTextField,
                             password: passwordTextField,
                             user: user) {
            performSegue(withIdentifier: "loginSuccessful", sender: nil)
        } else {
            showLoginAlert()
            passwordTextField.text = ""
        }
    }
    
    @IBAction func forgotUsernamePressed() {
        showForgotUsernameAlert()
    }

    @IBAction func forgotPasswordPressed() {
        showForgotPasswordAlert()
    }
    
    private func isLoginSuccessful (username: UITextField,
                                    password: UITextField,
                                    user: Account) -> Bool {
        if username.text != user.getUsername ||
            password.text != user.getPassword {
            return false
        } else { return true }
    }
}

extension ViewController {

    private func showLoginAlert() {
        let alert = UIAlertController(title: "Invalid Username or Password",
                                           message: "Please, enter correct login and password",
                                           preferredStyle: .alert)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    private func showForgotUsernameAlert() {
        let alert = UIAlertController(title: "Oops!",
                                           message: "Your Username is \(user.getUsername)",
                                           preferredStyle: .alert)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
    
    private func showForgotPasswordAlert() {
        let alert = UIAlertController(title: "Oops!",
                                           message: "Your Password is \(user.getPassword)",
                                           preferredStyle: .alert)
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}

