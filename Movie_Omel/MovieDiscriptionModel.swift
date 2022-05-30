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
    var mockMovieDiscriptionModel =  MovieDiscriptionModel(id: 0, posterPath: "FlashImage", title: "Flash", status: "relize", tagline: "asasgasgasfg", budget: 6, voteAverage: 9.0, genres: [], overView: "Hello Hello Hello Hello Hello Hello Hello Hello Hello")
    func configureMovieDiscriptionModel () ->  MovieDiscriptionModel {
        return mockMovieDiscriptionModel
    }

}
