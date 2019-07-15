//
//  LoginBuilder.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/15.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

class LoginBuilder: NSObject {
    class func viewWithMessage(_ message: String, delegate: LoginViewDelegate, router:Router) -> UIViewController {
        let view = LoginViewController()
        view.delegate = delegate
        view.message = message
        self.buildView(view, router: router)
        return view
    }
    
    class func buildView(_ view: ViperViewProtocol, router: ViperRouterProtocol) {
        let presenter = LoginViewPresenter()
        let interactor = LoginInteractor()
        let wireframe = LoginViewWireframe()
        self.assembleViperForView(view, interactor: interactor, presenter: presenter, wireframe: wireframe, router: router)
    }
}
