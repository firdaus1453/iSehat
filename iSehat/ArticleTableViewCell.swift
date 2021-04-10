//
//  ArticleTableViewCell.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 11/04/21.
//

import UIKit

class ArticleTableViewCell: UITableViewCell {

    @IBOutlet weak var articleImageView: UIImageView!
    @IBOutlet weak var titleArticleLabel: UILabel!
    @IBOutlet weak var authorArticleLabel: UILabel!
    
    func setArticle(article : ArticleModel) {
        self.articleImageView.image = UIImage(named: article.image ?? "")
        self.titleArticleLabel.text = article.title
        self.authorArticleLabel.text = article.author
    }

}
