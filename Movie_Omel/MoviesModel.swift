//
//  File.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 11.03.22.
//

import Foundation

struct MoviesModel {
    let id: String?
    let item: [MovieItemModel]
}

struct MovieItemModel {
    let id: Int
    let originalTitle: String
    let overview: String
    let voteAverage: Double
    let posterPath: String
    
}
