//
//  contentView.swift
//  YWNamePlaceholder
//
//  Created by Yoseph Wijaya on 2017/07/04.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

extension UIView {


    var asCircularContent:Bool {
        set {
            self.layer.cornerRadius = sqrt(self.bounds.size.width * (self.bounds.size.width / 4))
            self.layer.masksToBounds = newValue
            self.backgroundColor = UIColor(hue: CGFloat(arc4random_uniform(360)) / 360.0, saturation: 0.7, brightness: 0.8, alpha: 1.0)
        }
        
        get {
            return layer.masksToBounds
        }
    }
    
    
    
    
}
