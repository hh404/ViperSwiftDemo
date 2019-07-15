//
//  NoteListInteractorInput.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

protocol NoteListInteractorInput: class {
     func loadAllNotes() -> Void
     func noteCount() -> Int64
    func titleForNoteAtIndex(_ index: Int64) -> String
     func contentForNoteAtIndex(_ index: Int64) -> String
     func noteAtIndex(_ index: Int64) -> NoteModel?
     func noteUUIDAtIndex(_ index: Int64) -> String
     func noteTitleAtIndex(_ index: Int64) -> String
     func noteContentAtIndex(_ index: Int64) -> String
     func deleteNoteAtIndex(_ index: Int64) -> Void
}
