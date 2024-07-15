//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by Henry Calderon on 7/15/24.
//

import Foundation

struct WeatherResponse: Decodable {
    let main: Weather
}

struct Weather: Decodable {
    let temp: Double
    let humidity: Double
}
