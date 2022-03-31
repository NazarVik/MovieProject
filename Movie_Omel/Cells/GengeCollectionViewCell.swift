//
//  GengeCollectionViewCell.swift
//  Movie_Omel
//
//  Created by admin on 18.01.22.
//

import UIKit

class GengeCollectionViewCell: UICollectionViewCell {
   
    @IBOutlet weak var genreImageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    
    func configure(by model: Genres){
        textLabel.text = model.name.uppercased()
        genreImageView.image = UIImage(named: "Shape_2")
    }
    
    
//    imageCell.image = "comedy"
    
}
