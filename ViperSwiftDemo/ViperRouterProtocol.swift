//
//  ViperRouterProtocol.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/12.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

protocol ViperRouterProtocol: class {
    static func pushViewController(to destinationViewController: UIViewController, from sourceViewController: UIViewController, animated: Bool)
    static func popViewController(_ viewController: UIViewController, animated: Bool)
    static func presentViewController(toPresent viewController: UIViewController,from sourceViewController: UIViewController, animated: Bool, completion: (()->())?)
    static func dismissViewController(toPresent viewController: UIViewController,from sourceViewController: UIViewController, animated: Bool, completion: (()->())?)
}
