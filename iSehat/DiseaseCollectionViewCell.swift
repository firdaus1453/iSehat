//
//  DiseaseCollectionViewCell.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 10/04/21.
//

import UIKit

class DiseaseCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var diseaseImageView: UIImageView!
    @IBOutlet weak var diseaseLabel: UILabel!
    
    func setDisease(disease: DiseaseModel){
        self.diseaseLabel.text = disease.title
        self.diseaseImageView.image = UIImage(named: disease.image ?? "")
    }
    
}
