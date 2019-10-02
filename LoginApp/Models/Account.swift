//
//  Account.swift
//  LoginApp
//
//  Created by admin on 10/2/19.
//  Copyright © 2019 Timur Korolev. All rights reserved.
//

class Account {
    private let username: String
    private let password: String
    
    var getUsername: String {
        return username
    }
    
    var getPassword: String {
        return username
    }
    
    init(username: String, password: String) {
        self.username = username
        self.password = password
    }
}
