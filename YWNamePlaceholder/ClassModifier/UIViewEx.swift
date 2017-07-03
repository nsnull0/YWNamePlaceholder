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
            self.layer.cornerRadius = 10
            self.layer.masksToBounds = newValue
            self.layer.backgroundColor = UIColor(hue: CGFloat(arc4random() % 256 / 256), saturation: 0.7, brightness: 0.8, alpha: 1.0).cgColor
        }
        
        get {
            return layer.masksToBounds
        }
    }
    
}
