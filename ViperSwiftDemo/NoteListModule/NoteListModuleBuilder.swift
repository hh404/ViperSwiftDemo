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
    static func viewControllerWithNoteListDataService(_ service: NoteListDataService,router: NoteListRouter) -> UIViewController {
        let view = NoteListViewController()
        
//        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
//        UIViewController *view = [sb instantiateViewControllerWithIdentifier:@"ZIKTNoteListViewController"];
//        NSAssert([view isKindOfClass:[ZIKTNoteListViewController class]], nil);
//        [self buildView:(id<ZIKTViperViewPrivate>)view noteListDataService:service router:router];
        NoteListModuleBuilder.buildView(view, service: service, router: router)
        return view;
    }
    
    static func buildView(_ view: ViperViewProtocol, service: NoteListDataService, router: NoteListRouter) {
        let presenter = NoteListViewPresenter()
        let interactor = TNoteListInteractor.init(service)
//        ZIKTNoteListViewPresenter *presenter = [[ZIKTNoteListViewPresenter alloc] init];
//        ZIKTNoteListInteractor *interactor = [[ZIKTNoteListInteractor alloc] initWithNoteListDataService:service];
//
        interactor.eventHandler = presenter;
        interactor.dataSource = presenter;
        let wireframe = TNoteListWireframe.init()
//
//        id<ZIKTViperWireframePrivate> wireframe = (id)[[ZIKTNoteListWireframe alloc] init];
//        NSAssert([wireframe conformsToProtocol:@protocol(ZIKTViperWireframePrivate)], nil);
        wireframe.viperView = view;
        wireframe.router = router;
        presenter.viperView = view
        presenter.wireframe = wireframe
        presenter.interactor = interactor
//
//        [(id<ZIKTViperPresenterPrivate>)presenter setView:view];
//        [(id<ZIKTViperPresenterPrivate>)presenter setWireframe:wireframe];
//        [(id<ZIKTViperPresenterPrivate>)presenter setInteractor:interactor];
//
        view.eventHandler = presenter;
        view.viewDataSource = presenter;
    }
}
