//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Andraž on 17/04/2018.
//  Copyright © 2018 Andraz. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    //MARK: Meal class tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceds() {
        let zeroRatingMeal = Meal(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
    }
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Meal(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
    
}
