//
//  NoteListViewDataSource.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol NoteListViewDataSource: class {
    func numberOfRowsInSection(_ section: Int) -> Int
    func textOfCellForRowAtIndexPath(_ indexPath: IndexPath) -> String
    func detailTextOfCellForRowAtIndexPath(_ indexPath: IndexPath) -> String
}

