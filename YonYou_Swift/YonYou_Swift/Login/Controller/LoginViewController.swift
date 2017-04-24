//
//  LoginViewController.swift
//  YonYou_Swift
//
//  Created by 韩扬 on 2017/4/24.
//  Copyright © 2017年 HanYang. All rights reserved.
//

import UIKit
import Alamofire




class LoginViewController: UIViewController {

    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    var rememberFlag = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    //记住密码
    @IBAction func rememberAction(_ sender: UIButton) {
        rememberFlag = !rememberFlag
        if rememberFlag {
            sender.setImage(UIImage(named:"select"), for: UIControlState.normal)
        }else{
            sender.setImage(UIImage(named:"unSelect"), for: UIControlState.normal)
        }
    }
    
    //登录
    @IBAction func LoginAction(_ sender: UIButton) {
        print("登录")
        
        
        let param:Parameters = [
            "userName":"admin",
            "password":"123456"
        ]
        
        
        Alamofire.request("http://61.181.83.178:9000/yonyou/loginController.do?checkuser", method: .post, parameters: param, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            guard let Json = response.result.value else {return}
            print("json:\(Json)")
        }
//        let mainVC = MainViewController()
//        self.present(mainVC, animated: true, completion: nil)
//    
        
    }
    
    

}


