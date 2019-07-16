//
//  NoteListInteractor.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

class TNoteListInteractor: ViperInteractorProtocol, NoteListInteractorInput {
    func loadAllNotes() {
        
    }
    
    func noteCount() -> Int64 {
        let count = self.noteListDataService?.noteList?.count
        return Int64(count ?? 0)
    }
    
    func titleForNoteAtIndex(_ index: Int64) -> String {
        return self.noteListDataService?.noteList?[Int(index)].title ?? ""
    }
    
    func contentForNoteAtIndex(_ index: Int64) -> String {
        return self.noteListDataService?.noteList?[Int(index)].content ?? ""
    }
    
    func noteAtIndex(_ index: Int64) -> NoteModel? {
        return self.noteListDataService?.noteList?[Int(index)]
    }
    
    func noteUUIDAtIndex(_ index: Int64) -> String {
        return self.noteListDataService?.noteList?[Int(index)].uuid ?? ""
    }
    
    func noteTitleAtIndex(_ index: Int64) -> String {
         return self.noteListDataService?.noteList?[Int(index)].title ?? ""
    }
    
    func noteContentAtIndex(_ index: Int64) -> String {
         return self.noteListDataService?.noteList?[Int(index)].content ?? ""
    }
    
    func deleteNoteAtIndex(_ index: Int64) {
        self.noteListDataService?.noteList?.remove(at: Int(index))
    }
    
    var dataSource: Any?
    
    var eventHandler: Any?
    
    private var currentEditingNote: NoteModel?
    private var noteListDataService: NoteListDataService?
    
    
    init(_ service: NoteListDataService) {
        self.noteListDataService = service
    }
    
    func initWithNoteListDataService(_ service: NoteListDataService) {
        self.noteListDataService = service
    }
}

