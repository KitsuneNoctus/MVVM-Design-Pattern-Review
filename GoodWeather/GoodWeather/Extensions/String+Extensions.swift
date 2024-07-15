//
//  String+Extensions.swift
//  GoodWeather
//
//  Created by Henry Calderon on 7/15/24.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
