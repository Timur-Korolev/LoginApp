//
//  AccountViewController.swift
//  LoginApp
//
//  Created by admin on 10/2/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var welcomeMessage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = welcomeMessage
    }

    @IBAction func closeButton() {
        dismiss(animated: true)
    }
    
}
