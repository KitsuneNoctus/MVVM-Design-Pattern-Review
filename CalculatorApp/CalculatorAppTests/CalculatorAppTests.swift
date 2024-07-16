//
//  CalculatorAppTests.swift
//  CalculatorAppTests
//
//  Created by Henry Calderon on 7/15/24.
//

import XCTest
@testable import CalculatorApp

final class CalculatorAppTests: XCTestCase {
    
    func test_SubtractTwoNumbers() {
        let calculator = Calculator()
        let result = calculator.subtract(5, 2)
        XCTAssertEqual(result, 3)
    }

    func test_AddTwoNumbers() {
        let calculator = Calculator()
        let result = calculator.add(2,3)
        
        XCTAssertEqual(result, 5)
    }

}
