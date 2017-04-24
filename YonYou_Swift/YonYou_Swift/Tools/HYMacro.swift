//
//  HYMacro.swift
//  YonYou_Swift
//
//  Created by 韩扬 on 2017/4/21.
//  Copyright © 2017年 HanYang. All rights reserved.
//

import Foundation
import UIKit


//block中使用
//#define WEAK_SELF(weakSelf)  __weak __typeof(&*self)weakSelf = self


/*控件适配*/
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

func SCALE_WIDTH(width:CGFloat) -> CGFloat {
    return SCREEN_WIDTH/375.0 * width
}
func SCALE_HEIGHT(height:CGFloat) -> CGFloat {
    return SCREEN_HEIGHT/667.0 * height
}

func RECTFIX_WIDTH(width:CGFloat) -> CGFloat {
    if SCREEN_WIDTH == 375.0 {
        return width;
    }else{
        return SCALE_WIDTH(width: width)
    }
}

func RECTFIX_HEIGHT(height:CGFloat) -> CGFloat {
    if SCREEN_HEIGHT == 667.0 {
        return height;
    }else{
        return SCALE_HEIGHT(height: height)
    }
}

//
///*RGB颜色设置*/
func RGBCOLOR(r:CGFloat,_ g:CGFloat,_ b:CGFloat) -> UIColor{
    return UIColor(red:  (r)/255.0, green: (g)/255.0, blue: (b)/255.0, alpha: 1.0)
}




