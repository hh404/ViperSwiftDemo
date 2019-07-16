//
//  NoteDataManager.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/16.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import UIKit

class NoteDataManager: NSObject, NoteListDataService {
    static let shared = NoteDataManager()
    var noteList: [NoteModel]?
    
    func fetchAllNotesWithCompletion(_ completed: (([NoteModel]) -> ())) {
        
    }
    
    func storeNote(_ note: NoteModel) {
        
    }
    
    func deleteNote(_ note: NoteModel) {
        
    }
    

}
