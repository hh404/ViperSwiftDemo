//
//  NoteListViewPresenter.swift
//  ViperSwiftDemo
//
//  Created by huangjianwu on 2019/7/14.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

class NoteListViewPresenter: ViperPresenterProtocol, NoteListViewEventHandler, NoteListViewDataSource {
    var viperView: ViperViewProtocol?
    
    var wireframe: ViperWireframeProtocol?
    
    var interactor: ViperInteractorProtocol?
    
    func didTouchNavigationBarAddButton() {
        
    }
    
    func canEditRowAtIndexPath(_ indexPath: IndexPath) {
        
    }
    
    func handleDeleteCellForRowAtIndexPath(_ indexPath: IndexPath) {
        
    }
    
    func handleDidSelectRowAtIndexPath(_ indexPath: IndexPath) {
        
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        
    }
    
    func textOfCellForRowAtIndexPath(_ indexPath: IndexPath) -> String {
        
    }
    
    func detailTextOfCellForRowAtIndexPath(_ indexPath: IndexPath) -> String {
        
    }
    
    func doViewDidLoad() {
        
    }
    
    func doViewWillAppear(_ animated: Bool) {
        
    }
    
    func doViewDidAppear(_ animated: Bool) {
        
    }
    
    func doViewWillDisappear(_ animated: Bool) {
        
    }
    
    func doViewDidDisappear(_ animated: Bool) {
        
    }
    
    
}
