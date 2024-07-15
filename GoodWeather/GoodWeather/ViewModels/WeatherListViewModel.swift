//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by Henry Calderon on 7/15/24.
//

import Foundation


class WeatherListViewModel {
    
}

class WeatherViewModel {
    let weather: WeatherResponse
    
    init(weather: WeatherResponse) {
        self.weather = weather
    }
    
    var city: String {
        return weather.name
    }
    
    var temperature: Double {
        weather.main.temp
    }
}
