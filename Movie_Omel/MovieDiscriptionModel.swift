//
//  MoviesDiscription.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 11.03.22.
//

import Foundation

struct MovisDiscriptionModel {
    let id: Int
    let posterPath: String
    let title: String
    let status: String
    let tagline: String
    let budget: Int
    let voteAverage: Double
    let genres: [Genres]
    let overview: String
    
}
