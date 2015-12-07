//
//  ItemViewController.swift
//  CustomPageView
//
//  Created by langyue on 15/12/7.
//  Copyright © 2015年 langyue. All rights reserved.
//

import UIKit

public class ItemViewController: UIViewController {
    
    
    func TabItemForTabPageItemViewController(controller:TabPageController,TabBarView:UIView,count:CGFloat,currentIndex:CGFloat)->TabPageItem{
        return TabPageItem()
    }
    

    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override public func didReceiveMemoryWarning() {
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
