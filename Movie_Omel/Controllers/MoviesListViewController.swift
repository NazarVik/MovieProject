//
//  MoviesListViewController.swift
//  Movie_Omel
//
//  Created by admin on 18.01.22.
//

import UIKit

class MoviesListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let identifier = "TableCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
    }
    
    
}
    
    extension MoviesListViewController: UITableViewDelegate, UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 20
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! MovieTableViewCell
            cell.backView.layer.cornerRadius = 10
           
            
            
           
//            cell.backView.layer.borderWidth = 5.0
//            cell.backView.layer.borderColor = UIColor.separator.cgColor
//            cell.layer.borderWidth = 15.0
//            cell.layer.borderColor = UIColor.separator.cgColor
            
            
            return cell
        }
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 150
        }
        
    }


