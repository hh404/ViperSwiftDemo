//
//  LoginViewProtocol.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/13.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation


protocol LoginViewProtocol: class {
    var delegate: LoginViewDelegate? { get set } //weak
    var message: String? { get set }
    var account: String? { get }
    var password: String? { get }
}
