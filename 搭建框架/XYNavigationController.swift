
//
//  XYNavigationController.swift
//  XYDanTang
//
//  Created by apple on 16/11/11.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit
import SVProgressHUD

class XYNavigationController: UINavigationController {

    internal override class func initialize(){
        super.initialize()
        
        /// 设置导航栏标题
        let navBar = UINavigationBar.appearance()
        navBar.barTintColor = XYGlobalRedColor()
        navBar.tintColor = UIColor.white
        navBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white, NSFontAttributeName: UIFont.systemFont(ofSize: 20)]
        
    }
    
    /**
     #  统一所有控制器导航栏左上角的返回按钮
     #

     
     */
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        /// 这时push进来的控制器viewController， 不是第一个子控制器(不是跟控制器)
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "checkUserType_backward_9x15_"), style: .plain, target: self, action: #selector(navgationBackClick))
        }
        
        super.pushViewController(viewController, animated: true)
    }
    
    func navgationBackClick() {
        if SVProgressHUD.isVisible() {
            SVProgressHUD.dismiss()
        }
        
        if UIApplication.shared.isNetworkActivityIndicatorVisible {
            UIApplication.shared.isNetworkActivityIndicatorVisible = false
        }
        
        popViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
