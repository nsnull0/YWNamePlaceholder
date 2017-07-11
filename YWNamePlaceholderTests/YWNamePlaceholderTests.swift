//
//  YWNamePlaceholderTests.swift
//  YWNamePlaceholderTests
//
//  Created by Yoseph Wijaya on 2017/07/03.
//  Copyright © 2017 Yoseph Wijaya. All rights reserved.
//

import XCTest
@testable import YWNamePlaceholder

class YWNamePlaceholderTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testLabelConstraint() {
        let label:UILabel = UILabel(frame: CGRect.init(x: 10, y: 10, width: 10, height: 10))
        
        label.asTextTitle = "Yoseph Wijaya Sew Pew"
        
        XCTAssertEqual(label.text!.characters.count, 4)
        
        var str:String = label.text!.getStringFromCustomRange(_startIndex: 3, _countLength: 1)
        
        XCTAssertEqual(str.characters.count, 1)
        
        str = label.text!.getStringFromCustomRange(_startIndex: 2, _countLength: 2)
        
        XCTAssertEqual(str.characters.count, 2)
        
        str = label.text!.getStringFromCustomRange(_startIndex: 0, _countLength: 1)
        
        XCTAssertEqual(str, "Y")
        
        str = label.text!.getStringFromCustomRange(_startIndex: 1, _countLength: 1)
        
        XCTAssertEqual(str, "W")
        
        label.setTextCountConstraint(count: 5)
        
        XCTAssertEqual(label.text!.characters.count, 4)
        
        label.setTextCountConstraint(count: 3)
        
        XCTAssertEqual(label.text!, "YSP")
        
    }
    
}
