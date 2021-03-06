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
    
    lazy private var contentContainer:UIView = UIView()
    lazy private var textTitle:UILabel = UILabel()
    
    public init(originLocation: CGPoint,_withSize size: CGFloat,_yourPlaceholder str:String,_fontPlaceHolder font:UIFont) {
        
        let frame:CGRect = CGRect(x: originLocation.x, y: originLocation.y, width: size, height: size)
        super.init(frame: frame)
        self.backgroundColor = UIColor.clear
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupProperty(str: str, font: font)
    }
    
    public convenience init(originLocation: CGPoint,_withSize size: CGFloat,_yourPlaceholder str:String,_fontPlaceHolder font:UIFont,_constraintTextResultCount count:Int){
        self.init(originLocation: originLocation, _withSize: size, _yourPlaceholder: str, _fontPlaceHolder: font)
        textTitle.setTextCountConstraint(count: count)
    }
    
    
    func setupProperty(str:String, font:UIFont) {
        
        contentContainer = UIView(frame: CGRect(x: 4, y: 4, width: self.bounds.size.width - 8, height: self.bounds.size.height - 8))
        textTitle =  UILabel(frame: CGRect(x: (self.bounds.size.width / 2.5)/2, y: (self.bounds.size.width / 2.5)/2, width: self.bounds.size.width - (self.bounds.size.width / 2.5), height: self.bounds.size.height - (self.bounds.size.width / 2.5)))
        
        
        contentContainer.asCircularContent = true
        textTitle.asTextTitle = str
        textTitle.setAutoFont = font
        textTitle.baselineAdjustment = UIBaselineAdjustment.alignCenters
        
        self.addSubview(contentContainer)
        self.addSubview(textTitle)
        
        
    }
    
    
    public func setFont(_textFont font:UIFont){
        textTitle.setAutoFont = font
    }
    
    public func setColor(_textColor color:UIColor, _contentColor color2:UIColor){
        contentContainer.backgroundColor = color2
        textTitle.textColor = color
    }
    
    public func setFontSize(_staticFontSize size:CGFloat){
        textTitle.staticFontSize = size
    }
    
    public func debugListFontDevice() -> Array<String>{
        let fontFamilyNames = UIFont.familyNames
        var resultFamily = Array<String>()
        for familyName in fontFamilyNames {
            print("------------------------------")
            print("Font Family Name = [\(familyName)]")
            let names = UIFont.fontNames(forFamilyName: familyName)
            print("Font Names = [\(names)]")
            resultFamily.append(familyName)
        }
        return resultFamily
    }
    
    public func setUpdate(_text str:String, _textColor color:UIColor, _contentColor color2:UIColor){
        textTitle.asTextTitle = str
        setColor(_textColor: color, _contentColor: color2)
    }
    
    public func setUpdate(_text str:String, _textColor color:UIColor, _contentColor color2:UIColor, _staticFontSize size:CGFloat?){
        textTitle.asTextTitle = str
        setColor(_textColor: color, _contentColor: color2)
        
        guard size != nil else {
            return
        }
        setFontSize(_staticFontSize: size!)
    }
    
    public func setUpdateTextLength(_count length:Int){
        textTitle.setTextCountConstraint(count: length)
    }
    
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
 
}


