//
//  MoviesListViewController.swift
//  Movie_Omel
//
//  Created by admin on 18.01.22.
//

import UIKit

class MoviesListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var ulrString = "https://api.themoviedb.org/3/list/{list_id}?api_key=<<api_key>>&language=en-US"
    let identifier = "TableCell"
    var moviesModelArray = MockMoviesModel().configureMovieModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Movies"
        tableView.dataSource = self
        tableView.delegate = self
    }
}
    
extension MoviesListViewController: UITableViewDelegate, UITableViewDataSource {
        
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return moviesModelArray.item.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! MovieTableViewCell
//            cell.backView.layer.cornerRadius = 10
        cell.configure(by: moviesModelArray.item[indexPath.item])
        return cell
    }
        
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "discription")
        self.navigationController?.pushViewController(vc!, animated: true)
    }
        
}


