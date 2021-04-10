//
//  DetailDiseaseViewController.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 10/04/21.
//

import UIKit

class DetailDiseaseViewController: UIViewController {

    @IBOutlet weak var detailDiseaseImageView: UIImageView!
    @IBOutlet weak var titleDetailDiseaseLabel: UILabel!
    @IBOutlet weak var descDiseaseLabel: UILabel!
    @IBOutlet weak var titleSymtomsLabel: UILabel!
    @IBOutlet weak var contentSymtomsLabel: UILabel!
    @IBOutlet weak var titleCauseLabel: UILabel!
    @IBOutlet weak var contentCauseLabel: UILabel!
    @IBOutlet weak var titleTreatmentLabel: UILabel!
    @IBOutlet weak var contentTreatmentLabel: UILabel!
    @IBOutlet weak var doctorLabel: UILabel!
    
    var dataDetailDisease = DiseaseModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .never

        setupUI()
    }
    
    func setupUI() {
        detailDiseaseImageView.image = UIImage(named: dataDetailDisease.image ?? "")
        titleDetailDiseaseLabel.text = dataDetailDisease.title
        descDiseaseLabel.text = dataDetailDisease.deskripsi
        
        titleSymtomsLabel.text = "Gejala \(dataDetailDisease.title ?? "")"
        titleCauseLabel.text = "Penyebab \(dataDetailDisease.title ?? "")"
        titleTreatmentLabel.text = "Pengobatan dan Pencegahan \(dataDetailDisease.title ?? "")"
        
        contentSymtomsLabel.text = dataDetailDisease.symptoms
        contentCauseLabel.text = dataDetailDisease.cause
        contentTreatmentLabel.text = dataDetailDisease.treatment
        
        doctorLabel.text = dataDetailDisease.doctor
    }
    
    func setDataDetailDisease(dataDetailDisease : DiseaseModel) {
        self.dataDetailDisease = dataDetailDisease
    }
    
    override func willMove(toParent parent: UIViewController?) {
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}
