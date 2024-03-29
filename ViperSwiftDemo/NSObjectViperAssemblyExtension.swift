//
//  NSObjectViperAssemblyExtension.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/12.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation

extension NSObject {
    static func assembleViperForView(_ view: ViperViewProtocol, interactor: ViperInteractorProtocol, presenter: ViperPresenterProtocol, wireframe: ViperWireframeProtocol, router: ViperRouterProtocol) {
        interactor.eventHandler = presenter
        interactor.dataSource = presenter
        
        wireframe.viperView = view;
        wireframe.router = router;
        
        presenter.interactor = interactor;
        presenter.viperView = view;
        presenter.wireframe = wireframe;
        
        view.viewDataSource = presenter;
        view.eventHandler = presenter;
    }
    
    /*+ (void)assembleViperForView:(id<ZIKTViperViewPrivate>)view
    presenter:(id<ZIKTViperPresenterPrivate>)presenter
    interactor:(id<ZIKTViperInteractorPrivate>)interactor
    wireframe:(id<ZIKTViperWireframePrivate>)wireframe
    router:(id<ZIKTViperRouter>)router {
    NSParameterAssert([view conformsToProtocol:@protocol(ZIKTViperViewPrivate)]);
    NSParameterAssert([presenter conformsToProtocol:@protocol(ZIKTViperPresenterPrivate)]);
    NSParameterAssert([interactor conformsToProtocol:@protocol(ZIKTViperInteractorPrivate)]);
    NSParameterAssert([wireframe conformsToProtocol:@protocol(ZIKTViperWireframePrivate)]);
    NSCParameterAssert([router conformsToProtocol:@protocol(ZIKTViperRouter)]);
    
    NSAssert3(interactor.eventHandler == nil, @"Interactor (%@)'s eventHandler (%@) already exists when assemble viper for new eventHandler", interactor, interactor.eventHandler,presenter);
    NSAssert3(interactor.dataSource == nil, @"Interactor (%@)'s dataSource (%@) already exists when assemble viper for new dataSource", interactor, interactor.dataSource,presenter);
    
    interactor.eventHandler = presenter;
    interactor.dataSource = presenter;
    
    NSAssert3(wireframe.view == nil, @"Wireframe (%@)'s view (%@) already exists when assemble viper for new view", wireframe, wireframe.view,view);
    wireframe.view = view;
    wireframe.router = router;
    
    NSAssert3(presenter.interactor == nil, @"Presenter (%@)'s interactor (%@) already exists when assemble viper for new interactor", presenter, presenter.interactor,interactor);
    NSAssert3(presenter.view == nil, @"Presenter (%@)'s view (%@) already exists when assemble viper for new view", presenter, presenter.view,view);
    NSAssert3(presenter.wireframe == nil, @"Presenter (%@)'s wireframe (%@) already exists when assemble viper for new router", presenter, presenter.wireframe,self);
    
    presenter.interactor = interactor;
    presenter.view = view;
    presenter.wireframe = wireframe;
    
    if ([view respondsToSelector:@selector(viewDataSource)] &&
    [view respondsToSelector:@selector(setViewDataSource:)]) {
    NSAssert3(view.viewDataSource == nil, @"View (%@)'s viewDataSource (%@) already exists when assemble viper for new viewDataSource", view, view.viewDataSource,presenter);
    view.viewDataSource = presenter;
    }
    NSAssert3(view.eventHandler == nil, @"View (%@)'s eventHandler (%@) already exists when assemble viper for new eventHandler", view, view.eventHandler,presenter);
    view.eventHandler = presenter;
    }*/

}
