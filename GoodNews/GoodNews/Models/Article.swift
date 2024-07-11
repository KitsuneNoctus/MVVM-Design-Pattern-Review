//
//  Article.swift
//  GoodNews
//
//  Created by Henry Calderon on 7/11/24.
//

import Foundation

struct ArticleList: Decodable {
    let articles: [Article]
}

struct Article: Decodable {
    let title: String
    let description: String?
}
