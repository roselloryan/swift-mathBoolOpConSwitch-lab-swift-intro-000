//
//  AllTheBasicsTest.swift
//  AllTheBasics
//
//  Created by James Campagno on 9/14/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import XCTest
@testable import AllTheBasics

class AllTheBasicsTest: XCTestCase {
    
    let testVC = ViewController()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAverageIsAbove75() {

        XCTAssertFalse(testVC.averageIsAbove(76, 75, 71.9), "Average is below 75, it should return false."  )
        
        XCTAssertFalse(testVC.averageIsAbove(75, 75, 75), "Average must be over 75 to return true.")
        
        XCTAssertTrue(testVC.averageIsAbove(75.1, 75, 75), "Avererage is above 75, should return true.")
        
        XCTAssertTrue(testVC.averageIsAbove(80, 80, 80), "Average is above 75, should return true.")
        
    }
    
    func testPasswordCombo() {
        
        XCTAssertEqual(testVC.passwordCombo("Jose", password: 3), "Access Denied", "Incorrect Name, they should be denied access.")
        
        XCTAssertEqual(testVC.passwordCombo("Elain", password: 3), "Access Denied", "Elain is spelled wrong, they should be denied access.")
        
        XCTAssertEqual(testVC.passwordCombo("Jerry", password: 4), "Access Denied", "Incorrect Password, 4 is not divisible by 3.")
        
        XCTAssertEqual(testVC.passwordCombo("Jose", password: 4), "Access Denied", "Incorrect Name and incorrect password.")
        
        XCTAssertEqual(testVC.passwordCombo("Jerry", password: 3), "Welcome!", "Jerry and 3 is a correct combo, they should be welcomed")
        
        XCTAssertEqual(testVC.passwordCombo("Elaine", password: 6), "Welcome!", "Elaine and 6 are correct combinations.")
        
        XCTAssertEqual(testVC.passwordCombo("Michael", password: 21), "Welcome!", "Michael and 21 are correct combinations.")
        
    }
    
    func testDescribeEmoji() {
        
        XCTAssertEqual(testVC.describe("💋"), "Kiss", "The kiss emoji should return the string 'Kiss'")
        
        XCTAssertEqual(testVC.describe("🐈"), "Cat", "The cat emoji should return the string 'Cat'")
        
        XCTAssertEqual(testVC.describe("🐢"), "Turtle", "The turtle emoji should return the string 'Turtle'")
        
        XCTAssertEqual(testVC.describe("🍕"), "Pizza", "The pizza emoji should return the string 'Pizza'")
        
        XCTAssertEqual(testVC.describe("👻"), "Ghost", "The ghost emoji should return the string 'Ghost'")
        
        XCTAssertEqual(testVC.describe("💩"), "Unknown", "The poo emoji should return the string 'Unknown' because it's not in the list of emojis we want to describe in our function.")
        
    }
    
}
