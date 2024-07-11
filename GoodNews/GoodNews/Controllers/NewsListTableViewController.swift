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
    }
    
}
