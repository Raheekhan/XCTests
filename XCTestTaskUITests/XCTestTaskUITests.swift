//
//  XCTestTaskUITests.swift
//  XCTestTaskUITests
//
//  Created by Ibrahim Khan on 3/13/18.
//  Copyright © 2018 Ibrahim Khan. All rights reserved.
//

import XCTest

class XCTestTaskUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        XCUIApplication().launch()
    }
    
    override func tearDown() {
        
        super.tearDown()
    }
    
    func testTableCount() {
    
        let table = app.tables.element(boundBy: 0)
        XCTAssertEqual(table.cells.count, 0)
        
        XCUIApplication().buttons["Get Table"].tap()
        
        XCTAssertEqual(table.cells.count, 10)
    }
    
    func testButtonAndTableCount() {
       
        XCTAssertEqual(app.tables.count, 1)
        XCTAssertEqual(app.buttons.count, 1)
        
    }
    
    func testVerifyItemDoesNotExistInGivenCell() {
        
        let table = app.tables.element(boundBy: 1)
        let cell = table.staticTexts["Pancake"]
        XCTAssert(!cell.exists)
        
    }
    
}
