//
//  AddCoffeeOrderViewModel.swift
//  HotCoffee
//
//  Created by Henry Calderon on 7/12/24.
//

import Foundation


struct AddCoffeeOrderViewModel {
    var name: String?
    var email: String?
    
    var types: [String] {
        return CoffeeType.allCases.map { $0.rawValue.capitalized }
    }
    
    var sizes: [String] {
        return CoffeeSize.allCases.map { $0.rawValue.capitalized }
    }
}