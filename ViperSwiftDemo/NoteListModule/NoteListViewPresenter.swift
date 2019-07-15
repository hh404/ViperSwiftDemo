//
//  NoteListViewPresenter.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

class NoteListViewPresenter: ViperPresenterProtocol, NoteListViewEventHandler, NoteListViewDataSource {
    weak var viperView: ViperViewProtocol?
    
    var wireframe: ViperWireframeProtocol?
    
    var listWireframe: TNoteListWireframe?
    
    var interactor: ViperInteractorProtocol? {
        didSet {
            self.loginInteractor = self.interactor as? (NoteListInteractorInput & ViperInteractorProtocol)
        }
    }
    
    var loginInteractor: (ViperInteractorProtocol & NoteListInteractorInput)?
    
    var logined: Bool = false
    
    func didTouchNavigationBarAddButton() {
        
    }
    
    func canEditRowAtIndexPath(_ indexPath: IndexPath) {
       
    }
    
    func handleDeleteCellForRowAtIndexPath(_ indexPath: IndexPath) {
        
    }
    
    func handleDidSelectRowAtIndexPath(_ indexPath: IndexPath) {
        
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        return Int(self.loginInteractor?.noteCount() ?? 0)
    }
    
    func textOfCellForRowAtIndexPath(_ indexPath: IndexPath) -> String {
        return self.loginInteractor?.titleForNoteAtIndex(Int64(indexPath.row)) ?? ""
    }
    
    func detailTextOfCellForRowAtIndexPath(_ indexPath: IndexPath) -> String {
        return self.loginInteractor?.contentForNoteAtIndex(Int64(indexPath.row)) ?? ""
    }
    
    func doViewDidLoad() {
        self.loginInteractor?.loadAllNotes()
    }
    
    func doViewWillAppear(_ animated: Bool) {
        
    }
    
    func doViewDidAppear(_ animated: Bool) {
        if self.logined == false {
            self.listWireframe?.presentLoginViewWithMessage("Login in to use this app", delegate: self, completion: {
                
            })
        }
    }
    
    func doViewWillDisappear(_ animated: Bool) {
        
    }
    
    func doViewDidDisappear(_ animated: Bool) {
        
    }
    
}

extension NoteListViewPresenter: LoginViewDelegate {
    func loginViewController(_ loginViewController: UIViewController, didLoginWithAccount: String) {
        
    }
}
