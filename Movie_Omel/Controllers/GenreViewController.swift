//
//  GenreViewController.swift
//  Movie_Omel
//
//  Created by admin on 25.01.22.
//

import UIKit

class GenreViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var genresArray = MockGenreModel().configureGenreModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Select Genre"
        self.collectionView.dataSource = self
        self.collectionView.delegate = self

    }
}


extension GenreViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectiomView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genresArray.genres.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GengeCollectionViewCell
        cell.configure(by: genresArray.genres[indexPath.item])
        return cell
    }
}
   
extension GenreViewController: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.size.width/2-15 , height: collectionView.bounds.size.width/2-15)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
        
//        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
//                return 15
//        }
        
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.init(top: 10, left: 10, bottom: 10, right: 10)
    }


}

