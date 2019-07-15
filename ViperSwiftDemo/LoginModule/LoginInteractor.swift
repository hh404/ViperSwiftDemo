//
//  LoginInteractor.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/13.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

class LoginInteractor: ViperInteractorProtocol, LoginInteractorInput {
    
    var dataSource: Any?
    
    var eventHandler: Any?
    
    func loginWithAccount(_ account: String, password: String, success: @escaping (() -> ()), error: @escaping (() -> ())) {
        LoginService.shared.loginWithAccount(account, password: password, success: success, error: error)
    }

}
