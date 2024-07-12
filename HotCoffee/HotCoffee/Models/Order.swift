//
//  Order.swift
//  HotCoffee
//
//  Created by Henry Calderon on 7/12/24.
//

import Foundation

enum CoffeeType: String, Codable {
    case cappuccino
    case latte
    case esspressino
    case cortado
    case mocha
}

enum CoffeeSize: String, Codable {
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
