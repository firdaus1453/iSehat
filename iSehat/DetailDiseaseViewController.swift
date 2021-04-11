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
    @IBOutlet weak var doctorLabel: UILabel!
    
    @IBOutlet weak var sectionDetailTableView: UITableView!
    @IBOutlet weak var videoTableView: UITableView!
    
    var dataDetailDisease = DiseaseModel()
    var dataSectionDetailDisease = [SectionDiseaseModel]()
    var dataVideo = [ArticleModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .never
        
        initTableView()
        setupUI()
    }
    
    func initTableView() {
        sectionDetailTableView.layer.cornerRadius = 10
        sectionDetailTableView.delegate = self
        sectionDetailTableView.dataSource = self
        
        videoTableView.delegate = self
        videoTableView.dataSource = self
        
        videoTableView.reloadData()
        sectionDetailTableView.reloadData()
    }
    
    func setupUI() {
        detailDiseaseImageView.image = UIImage(named: dataDetailDisease.image ?? "")
        titleDetailDiseaseLabel.text = dataDetailDisease.title
        descDiseaseLabel.text = dataDetailDisease.deskripsi
        doctorLabel.text = "Ditinjau oleh : \(dataDetailDisease.doctor ?? "")"
    }
    
    func setDataDetailDisease(dataDetailDisease : DiseaseModel) {
        self.dataDetailDisease = dataDetailDisease
        setDataSectionDetailDisease()
        setDataVideo()
    }
    
    func setDataSectionDetailDisease() {
        let symtoms = SectionDiseaseModel(title : "Gejala \(dataDetailDisease.title ?? "")", content : dataDetailDisease.symptoms)
        let cause = SectionDiseaseModel(title : "Penyebab \(dataDetailDisease.title ?? "")", content : dataDetailDisease.cause)
        let treatment = SectionDiseaseModel(title : "Pengobatan dan Pencegahan", content : dataDetailDisease.treatment)
        
        dataSectionDetailDisease.append(symtoms)
        dataSectionDetailDisease.append(cause)
        dataSectionDetailDisease.append(treatment)
    }
    
    func setDataVideo() {
        let video1 = ArticleModel(image: dataDetailDisease.imageVideo, title : dataDetailDisease.titleVideo, author: "Youtube", content : dataDetailDisease.urlVideo)
        
        dataVideo.append(video1)
    }
    
    override func willMove(toParent parent: UIViewController?) {
        navigationItem.largeTitleDisplayMode = .always
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // cek apakah tujuannya ke ViewController
        if segue.destination.isKind(of: SectionDetailViewController.self){
            // Buat variable untuk menampung viewcontroller
            let sectionDetailVC = segue.destination as! SectionDetailViewController
            let sectionIndex = sectionDetailTableView.indexPathForSelectedRow?.row ?? 0
            sectionDetailVC.dataSectionDetailDisease = dataSectionDetailDisease[sectionIndex]
        }
    }
}

extension DetailDiseaseViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == videoTableView {
            return dataVideo.count
        } else {
            return dataSectionDetailDisease.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == videoTableView {
            let video = dataVideo[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "VideoTableViewCell") as! VideoTableViewCell
            cell.setVideo(video: video)
            return cell
        } else {
            let section = dataSectionDetailDisease[indexPath.row]
            let cell = tableView.dequeueReusableCell(withIdentifier: "SectionDetailTableViewCell") as! SectionDetailTableViewCell
            cell.titleSectionDetailLabel.text = section.title
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if tableView == videoTableView {
            let video = dataVideo[indexPath.row]
            let url = URL(string: video.content ?? "www.youtube.com")!
            UIApplication.shared.open(url)
        }
    }
}

