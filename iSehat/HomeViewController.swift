//
//  HomeViewController.swift
//  iSehat
//
//  Created by Muhammad Firdaus on 10/04/21.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var diseaseCollectionView: UICollectionView!
    @IBOutlet weak var articleTableView: UITableView!
    
    var dataDisease = [DiseaseModel]()
    var dataArticle = [ArticleModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.largeTitleDisplayMode = .always

        diseaseCollectionView.delegate = self
        diseaseCollectionView.dataSource = self
        
        articleTableView.delegate = self
        articleTableView.dataSource = self
        
        initDataDisease()
        initDataArticle()
    }
    
    func initDataDisease() {
        dataDisease = getDataDisease()
        diseaseCollectionView.reloadData()
    }
    
    func initDataArticle() {
        dataArticle = getDataArticle()
        articleTableView.reloadData()
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
}

extension HomeViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArticle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let article = dataArticle[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ArticleCell") as! ArticleTableViewCell
        cell.articleImageView.layer.cornerRadius = 10
        cell.setArticle(article: article)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let article = dataArticle[indexPath.row]
        let url = URL(string: article.content ?? "www.kompas.com")!
        UIApplication.shared.open(url)
    }
}




