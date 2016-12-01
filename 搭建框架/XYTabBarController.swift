//
//  XYTabBarController.swift
//  XYDanTang
//
//  Created by apple on 16/11/11.
//  Copyright © 2016年 apple. All rights reserved.
//

import UIKit

class XYTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor(red: 245 / 255, green: 80 / 255, blue: 83 / 255, alpha: 1.0)
        
        //  添加子控制器
        addChildViewControllers()
    }

    fileprivate func addChildViewControllers() {
        
        addChileViewControlller(childControllerName: "XYDanTangViewController", title: "单糖", imageName: "TabBar_home_23x23_")
        
        addChileViewControlller(childControllerName: "XYProductViewController", title: "单品", imageName: "TabBar_gift_23x23_")
        
        addChileViewControlller(childControllerName: "XYCategoryViewController", title: "分类", imageName: "TabBar_category_23x23_")
        
        addChileViewControlller(childControllerName: "XYMeViewController", title: "我", imageName: "TabBar_me_boy_23x23_")
        
    }
    
    fileprivate func addChileViewControlller(childControllerName: String, title: String, imageName: String) {
        //  动态获取命名空间
        let ns = Bundle.main.infoDictionary!["CFBundleExecutable"] as! String
        
        //  将字符串转化为类，默认情况下命名空间就是项目名称，但是命名空间可以修改
        let cls : AnyClass? = NSClassFromString(ns +
        "." + childControllerName)
        
        let vcClass = cls as! UIViewController.Type
        
        let vc = vcClass.init()
        
        
        //  设置对应数据
        vc.tabBarItem.image = UIImage(named: imageName)
        vc.tabBarItem.selectedImage = UIImage(named: imageName + "selected")
        vc.title = title
        
        //  包装导航控制器
        let nav = XYNavigationController()
        
        nav.addChildViewController(vc)
        
        addChildViewController(nav)
        
        
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
