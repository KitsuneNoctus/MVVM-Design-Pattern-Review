//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Henry Calderon on 7/11/24.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=fe4f363bdd2a4370a87c49b004245e9c")!
        Webservice().getArticles(url: url) { _ in
            
        }
    }
    
}
