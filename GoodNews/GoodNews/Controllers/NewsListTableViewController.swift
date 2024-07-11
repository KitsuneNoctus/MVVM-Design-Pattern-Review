//
//  NewsListTableViewController.swift
//  GoodNews
//
//  Created by Henry Calderon on 7/11/24.
//

import Foundation
import UIKit

class NewsListTableViewController: UITableViewController {
    
    private var articleListViewModel: ArticleListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        let url = URL(string: "https://newsapi.org/v2/top-headlines?country=us&apiKey=KEY_HERE")!
        Webservice().getArticles(url: url) { articles in
            if let articles = articles {
                self.articleListViewModel = ArticleListViewModel(articles: articles)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return self.articleListViewModel == nil ? 0 : self.articleListViewModel.numberOfSections
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListViewModel.numberOfRowsInSection(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleTableViewCell", for: indexPath) as? ArticleTableViewCell else {
            fatalError("ArticleTableViewVell not found")
        }
        
        let articleVM = self.articleListViewModel.articleAtIndex(indexPath.row)
        cell.titleLabel.text = articleVM.title
        if let description = articleVM.description {
            cell.descriptionLabel?.text = description
        }
        else {
            cell.descriptionLabel?.removeFromSuperview()
        }
//        cell.descriptionLabel.text = articleVM.description
        return cell
    }
}
