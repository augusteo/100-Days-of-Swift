//
//  TapCounterUITest.swift
//  P01TapCounter
//
//  Created by vic on 9/01/2016.
//  Copyright © 2016 augusteo. All rights reserved.
//

import XCTest

class TapCounterUITest: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // since we couldn't test the text of the UILabel, we couldn't do much here.
    // all we are doing is testing whether we can tap the buttons.
    func testExample() {
        
        let app = XCUIApplication()
        let tapMeButton = app.buttons["Tap me!"]
        let resetButton = app.navigationBars["Counter"].buttons["Reset"]
        let counterLabel = app.staticTexts["0"]
        
        XCTAssert(counterLabel.exists)
        
        tapMeButton.tap()
        tapMeButton.tap()
        tapMeButton.tap()
        tapMeButton.tap()
        
        resetButton.tap()
        
        tapMeButton.tap()
        tapMeButton.tap()
        
        resetButton.tap()
    }
    
}























