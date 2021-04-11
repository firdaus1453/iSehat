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
    
    @IBOutlet weak var sectionDetailTableView: UITableView!
    
    var dataDetailDisease = DiseaseModel()
    var dataSectionDetailDisease = [SectionDiseaseModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .never
        sectionDetailTableView.layer.cornerRadius = 10
        sectionDetailTableView.delegate = self
        sectionDetailTableView.dataSource = self
        
        initDataSectionDetailDisease()
        setupUI()
    }
    
    func initDataSectionDetailDisease() {
        sectionDetailTableView.reloadData()
    }
    
    func setDataSectionDetailDisease() {
        let symtoms = SectionDiseaseModel(title : "Gejala \(dataDetailDisease.title ?? "")", content : dataDetailDisease.symptoms)
        let cause = SectionDiseaseModel(title : "Penyebab \(dataDetailDisease.title ?? "")", content : dataDetailDisease.cause)
        let treatment = SectionDiseaseModel(title : "Pengobatan dan Pencegahan", content : dataDetailDisease.treatment)
        
        dataSectionDetailDisease.append(symtoms)
        dataSectionDetailDisease.append(cause)
        dataSectionDetailDisease.append(treatment)
    }
    
    func setupUI() {
        detailDiseaseImageView.image = UIImage(named: dataDetailDisease.image ?? "")
        titleDetailDiseaseLabel.text = dataDetailDisease.title
        descDiseaseLabel.text = dataDetailDisease.deskripsi
        
//        titleSymtomsLabel.text = "Gejala \(dataDetailDisease.title ?? "")"
//        titleCauseLabel.text = "Penyebab \(dataDetailDisease.title ?? "")"
//        titleTreatmentLabel.text = "Pengobatan dan Pencegahan \(dataDetailDisease.title ?? "")"
//        
//        contentSymtomsLabel.text = dataDetailDisease.symptoms
//        contentCauseLabel.text = dataDetailDisease.cause
//        contentTreatmentLabel.text = dataDetailDisease.treatment
        
        doctorLabel.text = dataDetailDisease.doctor
    }
    
    func setDataDetailDisease(dataDetailDisease : DiseaseModel) {
        self.dataDetailDisease = dataDetailDisease
        setDataSectionDetailDisease()
        print(dataSectionDetailDisease)
    }
    
    override func willMove(toParent parent: UIViewController?) {
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension DetailDiseaseViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSectionDetailDisease.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = dataSectionDetailDisease[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "SectionDetailTableViewCell") as! SectionDetailTableViewCell
        cell.titleSectionDetailLabel.text = section.title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

