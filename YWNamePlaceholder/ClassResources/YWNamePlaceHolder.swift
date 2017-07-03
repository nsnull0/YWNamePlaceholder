//
//  YWNamePlaceHolder.swift
//  YWNamePlaceholder
//
//  Created by Yoseph Wijaya on 2017/07/03.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import UIKit

public class YWNamePlaceHolder: UIView {

    
    @IBOutlet public weak var contentContainer: UIView!
    

    @IBOutlet public weak var textTitle: UILabel!
    
    
    public func initiate() -> YWNamePlaceHolder {
        return UINib(nibName: "View", bundle: nil).instantiate(withOwner: nil, options: nil)[0] as! YWNamePlaceHolder
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
}
