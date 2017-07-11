//
//  StringEx.swift
//  YWNamePlaceholder
//
//  Created by Yoseph Wijaya on 2017/07/11.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import Foundation

extension String {
    func getStringFromCustomRange (_startIndex i:Int,_countLength length:Int) -> String {
        let start = self.index(self.startIndex, offsetBy: i)
        let countChar:Int = (-(self.characters.count - i))+length
        let end = self.index(self.endIndex, offsetBy: countChar)
        let range = start..<end
        
        return self.substring(with: range)
    }
    
    
}
