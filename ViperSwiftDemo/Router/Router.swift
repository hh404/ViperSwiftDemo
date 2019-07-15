//
//  Router.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/15.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

class Router: ViperRouterProtocol {
    static func dismissViewController(_ viewController: UIViewController, animated: Bool, completion: (() -> ())?) {
        viewController.dismiss(animated: animated, completion: completion)
    }
    
    static func pushViewController(to destinationViewController: UIViewController, from sourceViewController: UIViewController, animated: Bool) {
        sourceViewController.navigationController?.pushViewController(destinationViewController, animated: animated)
    }
    
    static func popViewController(_ viewController: UIViewController, animated: Bool) {
        viewController.navigationController?.popViewController(animated: animated)
    }
    
    static func presentViewController(toPresent viewController: UIViewController, from sourceViewController: UIViewController, animated: Bool, completion: (() -> ())?) {
        sourceViewController.present(viewController, animated: animated, completion: completion)
    }
    
    
    
}
