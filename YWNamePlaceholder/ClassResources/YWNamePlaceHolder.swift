//
//  YWNamePlaceHolder.swift
//  YWNamePlaceholder
//
//  Created by Yoseph Wijaya on 2017/07/03.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

class YWNamePlaceHolder: UIView {

    
    @IBOutlet weak var contentContainer: UIView!
    

    @IBOutlet weak var textTitle: UILabel!
    
    
    func initiate() -> YWNamePlaceHolder {
        return UINib(nibName: "View", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! YWNamePlaceHolder
    }
    
}
