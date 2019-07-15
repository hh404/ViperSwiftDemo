//
//  LoginViewController.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/13.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, ViperViewProtocol {
    
    var eventHandler: ViperViewEventHandler?
    
    private(set) var routeSource: UIViewController?
    
    internal var viewDataSource: Any?
    
    var delegate: LoginViewDelegate?
    
    var message: String?
    
    @IBOutlet weak var passwordTextField: UITextField?
    @IBOutlet weak var accountTextField: UITextField?
    @IBOutlet weak var messageLabel: UILabel?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        routeSource = self
        if let eventHandler = eventHandler {
            eventHandler.doViewDidLoad()
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if let eventHandler = eventHandler {
            eventHandler.doViewWillAppear(animated)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if let eventHandler = eventHandler {
            eventHandler.doViewDidAppear(animated)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if let eventHandler = eventHandler {
            eventHandler.doViewWillDisappear(animated)
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        if let eventHandler = eventHandler {
            eventHandler.doViewDidDisappear(animated)
        }
    }

    @IBAction func startLogin(_ sender: UIButton) {
        if let eventHandler = eventHandler {
            let loginHander: LoginViewEventHandler? = eventHandler as? LoginViewEventHandler
            if let loginHander = loginHander {
                loginHander.didTouchLoginButton()
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
