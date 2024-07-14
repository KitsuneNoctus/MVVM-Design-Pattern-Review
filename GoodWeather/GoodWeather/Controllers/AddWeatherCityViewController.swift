//
//  AddWeatherCityViewController.swift
//  GoodWeather
//
//  Created by Henry Calderon on 7/13/24.
//

import Foundation
import UIKit

class AddWeatherCityViewController: UIViewController {
    @IBOutlet weak var cityNameTextField: UITextField!
    
    @IBAction func saveCityButtonPressed() {
        if let city = cityNameTextField.text {
            let APIKey = ""
            let weatherURL = URL(string: "https://api.openweathermap.org/data/2.5/weather?q=\(city)&APPID=\(APIKey)&units=imperial")!
            
            let weatherResource = Resource<Any>(url: weatherURL) { data in
                return data
            }
            
            Webservice().load(resource: weatherResource) { result in
                
            }
        }
    }
    
    @IBAction func close() {
        self.dismiss(animated: true, completion: nil)
    }
}
