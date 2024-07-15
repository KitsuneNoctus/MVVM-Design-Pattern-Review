//
//  Constants.swift
//  GoodWeather
//
//  Created by Henry Calderon on 7/15/24.
//

import Foundation

struct Constants {
    struct Urls{
        static func urlForWeatherByCity(city: String) -> URL {
            // get the default settings for temperature
             let userDefaults = UserDefaults.standard
             let unit = (userDefaults.value(forKey: "unit") as? String) ?? "imperial"
            
            let APIKey = ""
            
            return URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&APPID=\(APIKey)&units=\(unit)")!
        }
    }
}
