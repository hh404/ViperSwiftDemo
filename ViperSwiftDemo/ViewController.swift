//
//  ViewController.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/12.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        self.navigationController?.pushViewController(<#T##viewController: UIViewController##UIViewController#>, animated: <#T##Bool#>)
        //self.pushViewController(to: <#T##UIViewController#>, from: <#T##UIViewController#>, animated: <#T##Bool#>)
    }


}


extension ViewController: ViperRouterProtocol {
    static func presentViewController(toPresent viewController: UIViewController, from sourceViewController: UIViewController, animated: Bool, completion: (() -> ())?) {
        
    }
    
    static func dismissViewController(toPresent viewController: UIViewController, from sourceViewController: UIViewController, animated: Bool, completion: (() -> ())?) {
        
    }
    
    static func pushViewController(to destinationViewController: UIViewController, from sourceViewController: UIViewController, animated: Bool) {
        
    }
    
    static func popViewController(_ viewController: UIViewController, animated: Bool) {
        
    }
    
//    func pushViewController(to destinationViewController: UIViewController, from source: UIViewController, animated: Bool) {
//
//    }
    
    
}

extension ViewController: LoginViewDelegate {
    
}
