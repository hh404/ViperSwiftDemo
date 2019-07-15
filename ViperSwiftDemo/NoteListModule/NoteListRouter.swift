//
//  NoteListRouter.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/15.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

protocol NoteListRouter: ViperRouterProtocol {
    static func loginViewWithMessage(_ message: String, delegate: LoginViewDelegate) -> UIViewController
//        func viewForCreatingNoteWithDelegate(_ message: String, delegate: LoginViewDelegate) -> UIViewController
//        func viewForEditingNoteWithUUID(_ message: String, delegate: LoginViewDelegate) -> UIViewController
}
