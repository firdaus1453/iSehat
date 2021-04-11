//
//  SectionDetailViewController.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 12/04/21.
//

import UIKit

class SectionDetailViewController: UIViewController {

    var dataSectionDetailDisease = SectionDiseaseModel()
    
    @IBOutlet weak var titleSectionDetailLabel: UILabel!
    @IBOutlet weak var contentSectionDetailLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleSectionDetailLabel.text = dataSectionDetailDisease.title
        contentSectionDetailLabel.text = dataSectionDetailDisease.content
    }
}
