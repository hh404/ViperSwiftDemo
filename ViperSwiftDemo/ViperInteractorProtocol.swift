//
//  ViperInteractorProtocol.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/12.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol ViperInteractorProtocol: class {
    var dataSource: Any? { get set } //weak
    var eventHandler: Any? { get set } //weak
}
