//
//  LoginViewEventHandler.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/13.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol LoginViewEventHandler: ViperViewEventHandler {
    func didTouchLoginButton() -> Void
}
