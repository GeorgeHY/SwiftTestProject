//
//  ReturnViewController.swift
//  YonYou_Swift
//
//  Created by 韩扬 on 2017/4/20.
//  Copyright © 2017年 HanYang. All rights reserved.
//

import UIKit

class ReturnViewController: UIViewController {

    var tableView:UITableView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false
        self.tableView = UITableView(frame: CGRect(x: 0, y: 64, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height))
        self.tableView?.delegate = self
        self.tableView?.dataSource = self
        self.tableView?.register(UINib.init(nibName: "Cell_Return", bundle: nil), forCellReuseIdentifier: "Cell_Return")
        self.tableView?.tableFooterView = UIView()
        self.view.addSubview(self.tableView!)
        
    }
    
    
    

    
    
    
    
}

// Mark: UITableViewDataSource
extension ReturnViewController: UITableViewDataSource{
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5;
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:Cell_Return = tableView.dequeueReusableCell(withIdentifier:"Cell_Return", for: indexPath) as! Cell_Return
        return cell
    }
    
    
}

//Mark: UITableViewDelegate
extension ReturnViewController: UITableViewDelegate{
    public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 240;
    }
}

