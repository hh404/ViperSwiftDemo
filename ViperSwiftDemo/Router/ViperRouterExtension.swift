//
//  ViperRouterExtension.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/15.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

extension Router {
    class func loginViewWithMessage(_ message: String, delegate: LoginViewDelegate) -> UIViewController {
        return LoginBuilder.viewWithMessage(message, delegate: delegate, router: Router())
    }
    
}
