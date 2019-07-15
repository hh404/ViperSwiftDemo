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
    var noteListTableView: UITableView? { get }
    func cellForRowAtIndexPath(_ indexPath: IndexPath, text: String, detailText: String) -> UITableViewCell
}

