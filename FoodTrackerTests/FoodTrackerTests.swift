//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Declan Rhodes on 30/07/2018.
//  Copyright © 2018 Declan Rhodes. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
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
    
    //MARK: Meal Class Tests
    
    /*func testMealInitializationSucceeds()
    {
        //Zero Rating
        let zeroRatingMeal = Meal.init(name:"zero", photo : nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        //Highest Positive Rating
        let positiveRatingMeal = Meal.init(name:"pos", photo : nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
        
        //Negative rating
        let negativeRatingMeal = Meal.init(name: "neg", photo: nil, rating: -1)
        XCTAssertNotNil(negativeRatingMeal)
        
        //Empty String
        let emptyMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNotNil(emptyMeal)
        //Rating Exceeds Maximum
        let ExMaxMeal = Meal.init(name: "String", photo: nil, rating: 6)
        XCTAssertNotNil(ExMaxMeal)
    }*/
}
