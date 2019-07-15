//
//  NoteListModuleBuilder.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/15.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

class NoteListModuleBuilder: NSObject {
    func viewControllerWithNoteListDataService(_ service: NoteListDataService,router: NoteListRouter) -> UIViewController {
        let view = NoteListViewController()
        
//        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        UIViewController *view = [sb instantiateViewControllerWithIdentifier:@"ZIKTNoteListViewController"];
//        NSAssert([view isKindOfClass:[ZIKTNoteListViewController class]], nil);
//        [self buildView:(id<ZIKTViperViewPrivate>)view noteListDataService:service router:router];
        return view;
    }
    
    /*func buildView(_ view: ViperViewProtocol, service: NoteListDataService, router: NoteListRouter) {
        
        ZIKTNoteListViewPresenter *presenter = [[ZIKTNoteListViewPresenter alloc] init];
        ZIKTNoteListInteractor *interactor = [[ZIKTNoteListInteractor alloc] initWithNoteListDataService:service];
        
        interactor.eventHandler = presenter;
        interactor.dataSource = presenter;
        
        id<ZIKTViperWireframePrivate> wireframe = (id)[[ZIKTNoteListWireframe alloc] init];
        NSAssert([wireframe conformsToProtocol:@protocol(ZIKTViperWireframePrivate)], nil);
        wireframe.view = view;
        wireframe.router = router;
        
        [(id<ZIKTViperPresenterPrivate>)presenter setView:view];
        [(id<ZIKTViperPresenterPrivate>)presenter setWireframe:wireframe];
        [(id<ZIKTViperPresenterPrivate>)presenter setInteractor:interactor];
        
        view.eventHandler = presenter;
        view.viewDataSource = presenter;
    }*/
}
