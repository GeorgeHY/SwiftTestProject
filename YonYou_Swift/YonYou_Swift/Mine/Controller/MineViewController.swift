//
//  MineViewController.swift
//  YonYou_Swift
//
//  Created by 韩扬 on 2017/4/20.
//  Copyright © 2017年 HanYang. All rights reserved.
//

import UIKit
import SnapKit

class MineViewController: UIViewController {

    lazy var headView = UIView()
    lazy var tableView = UITableView()
    lazy var dataArr:Array<String> = {
        var dataArr:Array = ["设置"]
        return dataArr
    }()
    lazy var iconImgArr:Array<String> = {
        var iconImgArr:Array = ["setting"]
        return iconImgArr
    }()
    var head = UIButton()
    var logoutBtn = UIButton()
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = UIColor.white
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.createUI()
        
    
        
        
        

        // Do any additional setup after loading the view.
    }

    

}

//Mark: InitUI
private extension MineViewController
{
    func createUI() {
        //headView
        headView.backgroundColor = UIColor.colorWithHexString(hex: "4da1eb")
        self.view.addSubview(headView)
        headView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left)
            make.right.equalTo(self.view.snp.right)
            make.top.equalTo(self.view.snp.top)
            make.height.equalTo(RECTFIX_HEIGHT(height: 200))
        }
        
        //tableView
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left)
            make.right.equalTo(self.view.snp.right)
            make.top.equalTo(headView.snp.bottom).offset(10)
            make.bottom.equalTo(self.view.snp.bottom).offset(-49)
            
        }
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView()
        tableView.register(UINib.init(nibName: "Cell_Mine", bundle: nil), forCellReuseIdentifier: "Cell_Mine")

        //头像
        self.headView.addSubview(head)
        head.snp.makeConstraints { (make) in
            make.center.equalTo(headView)
            make.size.equalTo(CGSize(width: RECTFIX_HEIGHT(height: 50), height: RECTFIX_HEIGHT(height: 50)))
        }
        head.setImage(UIImage(named: "head") , for: UIControlState.normal)
        head.layer.masksToBounds = true
        head.layer.cornerRadius = RECTFIX_HEIGHT(height: 25)
        head.backgroundColor = UIColor.white
        
        //退出登录
        self.view.addSubview(logoutBtn)
        logoutBtn.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left).offset(20)
            make.right.equalTo(self.view.snp.right).offset(-20)
            make.bottom.equalTo(self.view.snp.bottom).offset(-69)
            make.height.equalTo(40)
        }
        logoutBtn.setTitle("退出登录", for: UIControlState.normal)
        logoutBtn.setTitleColor(UIColor.colorWithHexString(hex: "4da1eb"), for: UIControlState.normal)
        logoutBtn.layer.masksToBounds = true
        logoutBtn.layer.cornerRadius = 5.0
        logoutBtn.layer.borderWidth = 0.5
        logoutBtn.layer.borderColor = UIColor.lightGray.cgColor
        
        
    }

}

extension MineViewController: UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return self.dataArr.count;
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell:Cell_Mine = tableView.dequeueReusableCell(withIdentifier: "Cell_Mine", for: indexPath) as! Cell_Mine
        cell.titleLbl?.text = self.dataArr[indexPath.row]
        cell.titleIcon.image = UIImage(named: self.iconImgArr[indexPath.row])
        return cell
        
    }
}

extension MineViewController:UITableViewDelegate{
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}



