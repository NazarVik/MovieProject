//
//  GenreViewController.swift
//  Movie_Omel
//
//  Created by admin on 25.01.22.
//

import UIKit

class GenreViewController: UIViewController {
    
    // API key: 9dcb2fc7f9c7799a5d892a673fa4d40c

    @IBOutlet weak var collectionView: UICollectionView!
    let urlString = "https://api.themoviedb.org/3/genre/movie/list?api_key=9dcb2fc7f9c7799a5d892a673fa4d40c&language=en-US"
    var networkDataGenres = NetworkDataGenres()
    var genresArray: GenreModel? {
        didSet {
            collectionView.reloadData()
        }
    }//= GenreModel(genres: [])
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Select Genre"
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
        print("hello")
        self.networkDataGenres.fetcherData(urlString: urlString) { GenreModel in
            guard let genreModel = GenreModel else { return }
            self.genresArray = genreModel
//            self.collectionView.reloadData()
        }
    }
}

extension GenreViewController: UICollectionViewDataSource, UICollectionViewDelegate {

    func collectionView(_ collectiomView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return genresArray?.genres.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! GengeCollectionViewCell
        guard let genre = genresArray?.genres[indexPath.item] else { return UICollectionViewCell() }
        cell.configure(by: genre)
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

