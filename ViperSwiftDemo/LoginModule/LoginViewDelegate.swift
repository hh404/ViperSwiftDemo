//
//  LoginViewDelegate.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/13.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

/// 与其他Module通信，告知当前View最后事件
protocol LoginViewDelegate: class {
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - loginViewController:最后事件的`UIViewController`,
    ///   - didLoginWithAccount: 要传出的参数
    func loginViewController(_ loginViewController: UIViewController, didLoginWithAccount: String)
}

// MARK: - make loginViewController optional
extension LoginViewDelegate {
    func loginViewController(_ loginViewController: UIViewController, didLoginWithAccount: String) {
//        LoginService.shared.loginWithAccount(<#T##account: String##String#>, password: <#T##String#>, success: <#T##(() -> ())?##(() -> ())?##() -> ()#>, error: <#T##(() -> ())?##(() -> ())?##() -> ()#>)
    }
    
}
