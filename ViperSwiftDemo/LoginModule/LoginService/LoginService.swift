//
//  LoginService.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/13.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import UIKit

class LoginService: NSObject {
    static let shared = LoginService()
    
    func loginedUser() -> UserModel? {
        let account: String = UserDefaults.standard.object(forKey: "account") as? String ?? ""
        let password: String = UserDefaults.standard.object(forKey: "password") as? String ?? ""
        let user = UserModel.init(account: account, password: password)
        return user
    }
    
    private func setLoginedUser(_ user: UserModel) {
        UserDefaults.standard.set(user.account, forKey: "account")
        UserDefaults.standard.set(user.password, forKey: "password")
        UserDefaults.standard.synchronize()
    }
    
    func loginWithAccount(_ account: String, password: String, success: (()->())?, error: (()->())?) -> Void {
        if account == "abc" && password == "123" {
            let user = UserModel.init(account: account, password: password)
            self.setLoginedUser(user)
            
            if let success = success {
                success()
            }
            
        }
    }
}
