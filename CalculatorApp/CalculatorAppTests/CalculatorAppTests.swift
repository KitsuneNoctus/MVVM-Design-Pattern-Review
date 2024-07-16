//
//  CalculatorAppTests.swift
//  CalculatorAppTests
//
//  Created by Henry Calderon on 7/15/24.
//

import XCTest
@testable import CalculatorApp

final class CalculatorAppTests: XCTestCase {
    
    private var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        self.calculator = Calculator()
    }
    
    func test_SubtractTwoNumbers() {
        let result = self.calculator.subtract(5, 2)
        XCTAssertEqual(result, 3)
    }

    func test_AddTwoNumbers() {
        
        let result = calculator.add(2,3)
        
        XCTAssertEqual(result, 5)
    }
    
    override class func tearDown() {
        super.tearDown()
    }

}
