//
//  TabPageControllerDelegate.swift
//  CustomPageView
//
//  Created by langyue on 15/12/7.
//  Copyright © 2015年 langyue. All rights reserved.
//

import UIKit


@objc public protocol TabPageControllerDelegate:NSObjectProtocol{
    
    optional func changeSelect(page:ItemViewController,nowTabItem:TabPageItem,oldTabItem:TabPageItem,controller:TabPageController,pageIndex:Int)
    
    
}


@objc public protocol TabPageContentDataSource: NSObjectProtocol {
    
    func childViewControllerForTabPageController(index:Int,pageContentFrame:CGRect)->ItemViewController
    
    func countForTabPageController()->Int

}
