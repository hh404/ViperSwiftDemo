//
//  ViperPresenterProtocol.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/12.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

/// imp
protocol ViperPresenterProtocol: ViperViewEventHandler {
//    weak var viperView: ZIKTViperViewEventHandler?
    var viperView: ViperViewProtocol? { get set } //weak
    var wireframe: ViperWireframeProtocol? { get set }
    var interactor: ViperInteractorProtocol? { get set }
}
