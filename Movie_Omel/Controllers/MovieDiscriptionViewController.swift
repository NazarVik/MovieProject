//
//  MovieDiscriptionViewController.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 11.03.22.
//

import UIKit

class MovieDiscriptionViewController: UIViewController {
    

    @IBOutlet weak var posterPath: UIImageView!
    @IBOutlet weak var titleDiscription: UILabel!
    @IBOutlet weak var status: UILabel!
    @IBOutlet weak var tagline: UILabel!
    @IBOutlet weak var budget: UILabel!
    @IBOutlet weak var voteAverage: UILabel!
    @IBOutlet weak var overView: UILabel!
    

    
    var ulrString = "https://api.themoviedb.org/3/movie/{movie_id}?api_key=9dcb2fc7f9c7799a5d892a673fa4d40c&language=en-US"
    
    var initDiscriptionVC = MockMovieDiscriptionModel().configureMovieDiscriptionModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Movie Info"
        posterPath.image = UIImage(named: initDiscriptionVC.posterPath)
        titleDiscription.text = initDiscriptionVC.title
        status.text = initDiscriptionVC.status
        tagline.text = initDiscriptionVC.tagline
        budget.text = "\(initDiscriptionVC.budget)"
        voteAverage.text = "\(initDiscriptionVC.voteAverage)"
        overView.text = initDiscriptionVC.overView
    }
        
}

