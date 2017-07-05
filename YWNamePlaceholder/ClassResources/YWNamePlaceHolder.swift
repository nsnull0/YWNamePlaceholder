//
//  YWNamePlaceHolder.swift
//  YWNamePlaceholder
//
//  Created by Yoseph Wijaya on 2017/07/03.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

public class YWNamePlaceHolder: UIView {

    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    
    public init(originLocation: CGPoint,_withSize size: CGFloat,_yourPlaceholder str:String,_fontPlaceHolder font:UIFont,_backgroundColor contentColor:UIColor,_placeHolderTextColor textColor: UIColor) {
        
        let frame:CGRect = CGRect(x: originLocation.x, y: originLocation.y, width: size, height: size)
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupProperty(str: str, font: font, contentColor: contentColor)
    }
    
    func setupProperty(str:String, font:UIFont, contentColor:UIColor) {
        
        let contentContainer: UIView = UIView(frame: CGRect(x: 4, y: 4, width: self.bounds.size.width - 8, height: self.bounds.size.height - 8))
        let textTitle: UILabel =  UILabel(frame: CGRect(x: (self.bounds.size.width / 2.5)/2, y: (self.bounds.size.width / 2.5)/2, width: self.bounds.size.width - (self.bounds.size.width / 2.5), height: self.bounds.size.height - (self.bounds.size.width / 2.5)))
        
        
        contentContainer.asCircularContent = true
        textTitle.asTextTitle = "YW"
        
        self.addSubview(contentContainer)
        self.addSubview(textTitle)
        
        
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
 
}


