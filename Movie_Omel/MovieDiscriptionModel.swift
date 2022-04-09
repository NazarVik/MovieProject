//
//  MoviesDiscription.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 11.03.22.
//

import Foundation

struct MovieDiscriptionModel {
    var id: Int
    var posterPath: String
    var title: String
    var status: String
    var tagline: String
    var budget: Int
    var voteAverage: Double
    var genres: [Genres]
    var overView: String
}

class MockMovieDiscriptionModel {
    var mockMovieDiscriptionModel: MovieDiscriptionModel?
    func configureMovieDiscriptionModel () -> MovieDiscriptionModel {
        mockMovieDiscriptionModel!.posterPath = "FlashImage"
        mockMovieDiscriptionModel!.title = "Flash"
        mockMovieDiscriptionModel!.status = "no"
        mockMovieDiscriptionModel!.tagline = "no"
        mockMovieDiscriptionModel!.budget = 5
        mockMovieDiscriptionModel!.voteAverage = 8.0
        mockMovieDiscriptionModel!.overView = "no"
        return mockMovieDiscriptionModel!
    }
    
}
