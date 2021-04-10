//
//  ArticleModel.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 11/04/21.
//

import Foundation

struct ArticleModel {
    var image: String?
    var title: String?
    var author: String?
    var content: String?
}

func getDataArticle() -> [ArticleModel] {
    var article = [ArticleModel]()
    
    let article1 = ArticleModel(image: "article1", title: "10 Cara Meningkatkan Daya Tahan Tubuh", author : "kompas.com",
    content : "https://health.kompas.com/read/2020/04/25/193100668/10-cara-meningkatkan-daya-tahan-tubuh?page=all")
    let article2 = ArticleModel(image: "article2", title: "13 Makanan untuk Meningkatkan Daya Tahan Tubuh", author : "kompas.com", content : "https://health.kompas.com/read/2020/06/06/120000868/13-makanan-untuk-meningkatkan-daya-tahan-tubuh?page=all")
    article.append(article1)
//    article.append(article2)
    return article
}
