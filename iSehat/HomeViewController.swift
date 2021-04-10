//
//  HomeViewController.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 10/04/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var diseaseCollectionView: UICollectionView!
    
    var dataDisease = [DiseaseModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        diseaseCollectionView.delegate = self
        diseaseCollectionView.dataSource = self
        
        initDataDisease()
    }
    
    func initDataDisease() {
        dataDisease = getDataDisease()
        diseaseCollectionView.reloadData()
    }
}

extension HomeViewController : UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataDisease.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = diseaseCollectionView.dequeueReusableCell(withReuseIdentifier: "diseaseViewCell", for: indexPath) as! DiseaseCollectionViewCell
        
        cell.contentView.layer.cornerRadius = 10
        
        let disease = dataDisease[indexPath.row]
        cell.setDisease(disease: disease)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 163, height: 163)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let disease = dataDisease[indexPath.row]
        
        let viewController = storyboard?.instantiateViewController(identifier: "DetailDiseaseScreen") as! DetailDiseaseViewController
        viewController.setDataDetailDisease(dataDetailDisease: disease)
        
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if #available(iOS 11.0, *) {
                self.navigationController?.navigationBar.prefersLargeTitles = true
                self.navigationController?.navigationItem.largeTitleDisplayMode = .automatic // Change Display Mode
            }else{
                // Fallback on earlier versions
            }
    }
}

