//
//  ViperWireframeProtocol.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/12.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol ViperWireframeProtocol: class {
    var viperView: ViperViewProtocol? { get set }//weak
    var router: ViperRouterProtocol? { get set }
}
