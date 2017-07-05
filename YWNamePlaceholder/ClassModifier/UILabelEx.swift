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
            self.font = UIFont.boldSystemFont(ofSize: sqrt(pow(self.bounds.size.width, 2.0)/2))
            self.adjustsFontSizeToFitWidth = true
            self.text = newValue
        }
        
        get {
            return self.text!
        }
    }

}
