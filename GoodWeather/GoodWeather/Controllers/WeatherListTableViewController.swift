//
//  WeatherListTableViewController.swift
//  GoodWeather
//
//  Created by Henry Calderon on 7/13/24.
//

import Foundation
import UIKit

class WeatherListTableViewController: UITableViewController {
    
    //MARK: vieDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let resource = Resource<WeatherResponse>(url: URL(string:"")!) { data in
            return try? JSONDecoder().decode(WeatherResponse.self, from: data)
        }
        
        Webservice().load(resource: resource) { weatherReponse in
            if let weatherReponse = weatherReponse {
                print(weatherReponse)
            }
        }
    }
    
    //MARK: TableView Details
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        
        cell.cityNameLabel.text = "Houston"
        cell.temperatureLabel.text = "70°"
        
        return cell
        
    }
}
