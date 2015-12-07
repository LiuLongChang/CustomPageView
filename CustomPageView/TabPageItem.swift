//
//  TabPageItem.swift
//  CustomPageView
//
//  Created by langyue on 15/12/7.
//  Copyright © 2015年 langyue. All rights reserved.
//

import UIKit

public class TabPageItem: UIView {

    
    var controller:TabPageController!
    var titleLabel:UILabel!
    var TabIndex:UILabel!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSelf()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func initSelf(){
        
        
        
        
        
    }
    
    
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */

}
