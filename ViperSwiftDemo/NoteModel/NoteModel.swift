//
//  NoteModel.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

struct NoteModel {
    let uuid: String!
    let title: String!
    let content: String!
    
    init(uuid: String?, title: String, content: String) {
        if let uuid = uuid {
            self.uuid = uuid
        }
        else {
            self.uuid = NSUUID.init().uuidString
        }
        self.title = title
        self.content = content
    }
}
