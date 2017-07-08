//
//  UILabelEx.swift
//  YWNamePlaceholder
//
//  Created by Yoseph Wijaya on 2017/07/05.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

extension UILabel {

    var asTextTitle:String {
        set{
            self.textColor = UIColor.white
            self.textAlignment = .center
            self.adjustsFontSizeToFitWidth = true
            
            let stringSplit = newValue.components(separatedBy: " ")
            
            var strResult = ""
            
            guard stringSplit.count > 1 else {
                return
            }
            
            
            for str in stringSplit{
                let strProcess = "\(str.characters.first!)"
                
                strResult = strResult + strProcess
                
            }
            
            self.text = strResult.uppercased()
        }
        
        get {
            return self.text!
        }
    }
    
    var setAutoFont:UIFont{
        set {
            self.font = newValue.withSize(sqrt(pow(self.bounds.size.width, 2.0)/2))
        }
        get {
            return self.font
        }
    }
    
    var staticFont:CGFloat{
        set{
            self.font = self.font.withSize(newValue)
        }
        
        get{
            return self.font.pointSize
        }
    }
}
