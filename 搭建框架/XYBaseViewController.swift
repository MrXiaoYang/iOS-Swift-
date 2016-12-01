//
//  XYBaseViewController.swift
//  XYDanTang
//
//  Created by apple on 16/11/14.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit
import SVProgressHUD
import FDFullscreenPopGesture

class XYBaseViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = XYGlobalColor()
        navigationController?.fd_prefersNavigationBarHidden = true
        SVProgressHUD.setDefaultStyle(SVProgressHUDStyle.custom)
        SVProgressHUD.setMinimumDismissTimeInterval(1.0)
        SVProgressHUD.setBackgroundColor(UIColor(red: 0, green: 0, blue: 0, alpha: 0.5))
        SVProgressHUD.setForegroundColor(UIColor.white)
        
        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
