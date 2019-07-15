//
//  NoteListViewEventHandler.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol NoteListViewEventHandler: ViperViewEventHandler {
    func didTouchNavigationBarAddButton() -> Void
    func canEditRowAtIndexPath(_ indexPath: IndexPath) -> Void
    func handleDeleteCellForRowAtIndexPath(_ indexPath: IndexPath) -> Void
    func handleDidSelectRowAtIndexPath(_ indexPath: IndexPath) -> Void
}
