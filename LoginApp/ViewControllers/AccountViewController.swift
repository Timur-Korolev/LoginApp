//
//  AccountViewController.swift
//  LoginApp
//
//  Created by admin on 10/2/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func closeButton() {
        dismiss(animated: true)
    }
    
}
