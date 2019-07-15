//
//  NoteListDataService.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol NoteListDataService {
    var noteList: [NoteModel]? { get set }
    func fetchAllNotesWithCompletion(_ completed: (([NoteModel])->()))
    func storeNote(_ note: NoteModel) -> Void
     func deleteNote(_ note: NoteModel) -> Void
}
