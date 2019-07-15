
//
//  NoteListWireframe.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/15.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import Foundation
import UIKit

class TNoteListWireframe: ViperWireframeProtocol {
    weak var viperView: ViperViewProtocol?
    
    var router: ViperRouterProtocol?
    
    var listRouter: NoteListRouter?
    
    func presentLoginViewWithMessage(_ message: String, delegate: LoginViewDelegate, completion: @escaping (()->())) {
        if let listRouter = self.listRouter {
            let loginViewController = type(of: listRouter).loginViewWithMessage(message, delegate: delegate)
            type(of: listRouter).presentViewController(toPresent: loginViewController, from: (self.viperView?.routeSource!)!, animated: true, completion: completion)
        }
    }
    
    func dismissLoginView(_ viewController: UIViewController, animated: Bool, completion: @escaping (()->())) {
        viewController.dismiss(animated: animated, completion: completion)
    }
    
//    func presentEditorForCreatingNewNoteWithDelegate(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
}
//@interface ZIKTNoteListWireframe : NSObject <ZIKTViperWireframe>
//- (void)presentLoginViewWithMessage:(NSString *)message delegate:(id<ZIKTLoginViewDelegate>)delegate completion:(void (^ __nullable)(void))completion;
//- (void)dismissLoginView:(UIViewController *)viewController animated:(BOOL)animated completion:(void (^ __nullable)(void))completion;
//- (void)presentEditorForCreatingNewNoteWithDelegate:(id<ZIKTEditorDelegate>)delegate completion:(void (^ __nullable)(void))completion;
//- (void)pushEditorViewForEditingNoteWithUUID:(NSString *)uuid title:(NSString *)title content:(NSString *)content delegate:(id<ZIKTEditorDelegate>)delegate;
//- (UIViewController *)editorViewForEditingNoteWithUUID:(NSString *)uuid title:(NSString *)title content:(NSString *)content delegate:(id<ZIKTEditorDelegate>)delegate;
//- (void)pushEditorViewController:(UIViewController *)destination fromViewController:(UIViewController *)source animated:(BOOL)animated;
//- (void)quitEditorViewWithAnimated:(BOOL)animated;
//@end
