//
//  WebService.swift
//  GoodWeather
//
//  Created by Henry Calderon on 7/14/24.
//

import Foundation

struct Resoucre<T> {
    let url: URL
    let parse: (Data) -> T?
}

final class Webservice {
    
    func load<T>(resource: Resoucre<T>, completion: @escaping(T?) -> ()) {
        
        URLSession.shared.dataTask(with: resource.url) { data, response, error in
            if let data = data {
                DispatchQueue.main.async {
                    completion(resource.parse(data))
                }
            }
            else {
                completion(nil)
            }
        }.resume()
        
    }
    
}
