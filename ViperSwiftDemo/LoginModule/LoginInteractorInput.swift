//
//  LoginInteractorInput.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/13.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol LoginInteractorInput: class {
    func loginWithAccount(_ account: String, password: String, success: @escaping (()->()), error: @escaping (()->())) -> Void
}
