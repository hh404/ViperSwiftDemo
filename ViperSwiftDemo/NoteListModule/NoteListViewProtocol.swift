//
//  NoteListViewProtocol.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

protocol NoteListViewProtocol: class {
     func noteListTableView() -> UITableView
    func cellForRowAtIndexPath(_ indexPath: IndexPath, text: String, detailText: String) -> UITableViewCell
}

