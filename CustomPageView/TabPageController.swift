//
//  TabPageController.swift
//  CustomPageView
//
//  Created by langyue on 15/12/7.
//  Copyright © 2015年 langyue. All rights reserved.
//

import UIKit

extension UIColor{
    
    convenience init(rgbByFFFFFF:Int) {
        self.init(rgbByFFFFFF: rgbByFFFFFF,alpha:1)
    }
    
    convenience init(rgbByFFFFFF:Int,alpha:CGFloat) {
        self.init(red: CGFloat(Float((rgbByFFFFFF&0xff0000)>>0x10)/255),green:CGFloat(Float((rgbByFFFFFF&0xff00)>>8)/255),blue: CGFloat(Float(rgbByFFFFFF&0xff)/255),alpha:alpha)
    }
    
    
}



public class TabPageController: UIView {
    
    
    
    
    
    private var barView: UIView!
    private var pageContent:UIScrollView!
    private var pageCount:Int!
    private var bottomLine:UIView!
    private var currentPageIndex = 0
    
    private var _AllItems:NSMutableArray!
    private var _AllPages:NSMutableArray!
    
    var _DataSource:TabPageContentDataSource?
    var delegate: TabPageControllerDelegate?
    
    
    
    var DataSource: TabPageContentDataSource?{
        
        get{
            return _DataSource
        }
        set{
            _DataSource = newValue
            setViewInPageContent()
        }
        
    }
    
    
    
    private func setViewInPageContent(){
        
        if self.DataSource == nil{
            return
        }
        
        
        pageCount = self.DataSource!.countForTabPageController()
        let width = Float(Int(Float(self.frame.width))*pageCount)
        pageContent.contentSize = CGSize(width: CGFloat(width), height: pageContent.frame.height)
        
        //
        _AllItems = NSMutableArray()
        _AllItems = NSMutableArray()
        
        for var i=0;i<pageCount;i++ {
            let page: ItemViewController = self.DataSource!.childViewControllerForTabPageController(i, pageContentFrame: self.pageContent.frame)
            page.view.frame.origin.x = CGFloat(i * Int(self.pageContent.frame.width))
            pageContent.addSubview(page.view)
            _AllPages[i] = page
            
            
            
            let item: TabPageItem = page.TabItemForTabPageItemViewController(self, TabBarView: self.barView, count: CGFloat(pageCount), currentIndex: CGFloat(i))
            
            
            
            
            
            
        }
        
        
        
    }
    
    
    
    
    

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
