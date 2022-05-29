//
//  MovieTableViewCell.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 13.02.22.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var originalTitle: UILabel!
    @IBOutlet weak var overView: UILabel!
    @IBOutlet weak var voteAverage: UIStackView!
    @IBOutlet weak var posterPath: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
         // Initialization code
     }
        
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

    func configure(by model: overView) {
        posterPath.image = UIImage(named: "FlashImage")
        originalTitle.text = model.originalTitle.uppercased()
        overView.text = model.overview.uppercased()
    }
}
