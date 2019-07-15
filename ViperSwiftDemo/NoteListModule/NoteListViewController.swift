//
//  NoteListViewController.swift
//  ViperSwiftDemo
//
//  Created by chinaSoft on 2019/7/15.
//  Copyright © 2019 wangcenttest. All rights reserved.
//

import UIKit

class NoteListViewController: UIViewController, ViperViewProtocol, NoteListViewProtocol {
    var noteListTableView: UITableView?
    
    func cellForRowAtIndexPath(_ indexPath: IndexPath, text: String, detailText: String) -> UITableViewCell {
        let cell = self.noteListTableView?.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = text
        cell?.detailTextLabel?.text = detailText
        return cell!
    }
    
    var routeSource: UIViewController? {
        get {
            return self
        }
    }
    
    var eventHandler: ViperViewEventHandler?
    
    var viewDataSource: Any?
    
    var listEventHandler: NoteListViewEventHandler?
    var listViewDataSource: NoteListViewDataSource?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.noteListTableView = UITableView.init(frame: CGRect.init(x: 0, y: 120, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height - 120), style: .plain)
        self.noteListTableView?.dataSource = self
        self.noteListTableView?.delegate = self
        self.view.addSubview(self.noteListTableView!)
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.listEventHandler?.doViewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.listEventHandler?.doViewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.listEventHandler?.doViewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        self.listEventHandler?.doViewDidDisappear(animated)
    }

}


extension NoteListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.listViewDataSource?.numberOfRowsInSection(section) ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let text = self.listViewDataSource?.textOfCellForRowAtIndexPath(indexPath)
        let detailText = self.listViewDataSource?.detailTextOfCellForRowAtIndexPath(indexPath)
        let cell = self.cellForRowAtIndexPath(indexPath, text: text ?? "", detailText: detailText ?? "" )
        return cell
    }
    
    
}
