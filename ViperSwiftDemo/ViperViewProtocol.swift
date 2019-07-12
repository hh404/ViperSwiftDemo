//
//  ViperViewProtocol.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/12.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

protocol ViperViewProtocol: class {
    var routeSource: UIViewController? { get }
    var eventHandler: ZIKTViperViewEventHandler? { get set }
    var viewDataSource: Any? { get set }
}
