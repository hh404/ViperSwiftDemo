//
//  ViperViewEventHandler.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/12.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol ZIKTViperViewEventHandler: class {
    func doViewDidLoad()
    func doViewWillAppear(_ animated: Bool)
    func doViewDidAppear(_ animated: Bool)
    func doViewWillDisappear(_ animated: Bool)
    func doViewDidDisappear(_ animated: Bool)
}
