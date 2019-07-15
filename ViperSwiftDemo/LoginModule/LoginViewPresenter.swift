//
//  LoginViewPresenter.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/13.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

class LoginViewPresenter: ViperPresenterProtocol {
    
    weak var viperView: ViperViewProtocol? {
        didSet {
            self.loginViperView = self.viperView as? (LoginViewProtocol & ViperViewProtocol)
        }
    }
    
    var wireframe: ViperWireframeProtocol?
    
    var interactor: ViperInteractorProtocol? {
        didSet {
            self.loginInteractor = self.interactor as? (LoginInteractorInput & ViperInteractorProtocol)
        }
    }
    
    weak var loginViperView: (ViperViewProtocol & LoginViewProtocol)?
    
    weak var loginInteractor: (ViperInteractorProtocol & LoginInteractorInput)?
    
    func doViewDidLoad() {
        
    }
    
    func doViewWillAppear(_ animated: Bool) {
        
    }
    
    func doViewDidAppear(_ animated: Bool) {
        
    }
    
    func doViewWillDisappear(_ animated: Bool) {
        
    }
    
    func doViewDidDisappear(_ animated: Bool) {
        
    }
    
    
}


extension LoginViewPresenter: LoginViewEventHandler {
    func didTouchLoginButton() {
        
        guard let account = self.loginViperView?.account else { return }
        guard let password = self.loginViperView?.password else { return }
        self.loginInteractor?.loginWithAccount(account, password: password, success: {
            self.loginViperView?.delegate?.loginViewController(self.viperView as! UIViewController, didLoginWithAccount: account)
        }, error: {
            
        })
    }
}
