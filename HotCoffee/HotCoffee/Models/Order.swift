//
//  Order.swift
//  HotCoffee
//
//  Created by Henry Calderon on 7/12/24.
//

import Foundation

enum CoffeeType: String, Codable, CaseIterable {
    case cappuccino
    case latte
    case esspressino
    case cortado
    case mocha
}

enum CoffeeSize: String, Codable, CaseIterable {
    case small
    case medium
    case large
}

struct Order: Codable {
    let name: String
    let email: String
    let type: CoffeeType
    let size: CoffeeSize
}

extension Order {
    init?(_ vm: AddCoffeeOrderViewModel) {
        guard let name = vm.name,
              let email = vm.email,
              let selectedType = CoffeeType(rawValue: (vm.selectedType!.lowercased())),
              let selectedSize = CoffeeSize(rawValue: (vm.selectedSize!.lowercased())) else {
            return nil
        }
        self.name = name
        self.email = email
        self.type = selectedType
        self.size = selectedSize
    }
}
