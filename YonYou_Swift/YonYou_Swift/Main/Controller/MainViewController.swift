//
//  MainViewController.swift
//  YonYou_Swift
//
//  Created by 韩扬 on 2017/4/20.
//  Copyright © 2017年 HanYang. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let projectVC:UIViewController = ProjectViewController()
        let projectNavi = UINavigationController(rootViewController: projectVC)
        projectNavi.tabBarItem = UITabBarItem(title:"项目", image: nil, selectedImage: nil)
        projectNavi.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -15)
        
        
        let returnVC:UIViewController = ReturnViewController()
        let returnNavi = UINavigationController(rootViewController: returnVC)
        returnNavi.tabBarItem = UITabBarItem(title: "回款+预测", image: nil, selectedImage: nil)
        returnNavi.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -15)
        
        let appVC:UIViewController = ApplicationViewController()
        let appNavi = UINavigationController(rootViewController: appVC)
        appNavi.tabBarItem = UITabBarItem(title: "应用", image: nil, selectedImage: nil)
        appNavi.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -15)
        
        let mineVC:UIViewController = MineViewController()
        let mineNavi = UINavigationController(rootViewController: mineVC)
        mineNavi.tabBarItem = UITabBarItem(title: "我的", image: nil, selectedImage: nil)
        mineNavi.tabBarItem.titlePositionAdjustment = UIOffset(horizontal: 0, vertical: -15)
        
        self.viewControllers = [projectNavi,returnNavi,appNavi,mineNavi]
        
        
        
        
        
        
        
    }

    

}
