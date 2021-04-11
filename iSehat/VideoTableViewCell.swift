//
//  VideoTableViewCell.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 12/04/21.
//

import UIKit

class VideoTableViewCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var titleVideoLabel: UILabel!
    @IBOutlet weak var sourceVideoLabel: UILabel!
    
    func setVideo(video : ArticleModel) {
        self.videoImageView.image = UIImage(named: video.image ?? "")
        self.titleVideoLabel.text = video.title
        self.sourceVideoLabel.text = video.author
    }

}
