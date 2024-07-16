//
//  WeatherListViewModelTests.swift
//  GoodWeatherTests
//
//  Created by Henry Calderon on 7/15/24.
//

import XCTest
@testable import GoodWeather

final class WeatherListViewModelTests: XCTestCase {
    
    private var weatherListVM: WeatherListViewModel!

    override func setUp() {
        super.setUp()
        
        self.weatherListVM = WeatherListViewModel()
        
//        self.weatherListVM.addWeatherViewModel(WeatherViewModel(weather: ))
        
//        self.weatherListVM.addWeatherViewModel(WeatherViewModel(name: "Houston", currentTemp))
    }
    
//    func test_should_be_able_to_convert_to_celsius_succesfully() {
//        let celsiusTemp = [0, 22.2222]
//        
//        self.weatherListVM.updateUnit(to: .celsius)
//        
//        for (index, vm) in self.weatherListVM.weatherViewModels.enumerated() {
//            XCTAssertEqual(round(vm.currentTemperature.temperature), round(celsiusTemp[index]))
//        }
//    }
    
    override func tearDown() {
        super.tearDown()
    }

}
