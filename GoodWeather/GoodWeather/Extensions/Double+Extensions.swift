//
//  Double+Extensions.swift
//  GoodWeather
//
//  Created by Henry Calderon on 7/15/24.
//

import Foundation

extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°", self)
    }
}
