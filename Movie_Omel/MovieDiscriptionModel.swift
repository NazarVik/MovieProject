//
//  MoviesDiscription.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 11.03.22.
//

import Foundation

struct MovieDiscriptionModel: Decodable {
    var id: Int
    var posterPath: String
    var title: String
    var status: String
    var tagline: String
    var budget: Int
    var voteAverage: Double
    var genres: [Genres]
    var overView: String
    
    enum CodingKeys: String, CodingKey {
        case id, title, status, tagline, budget, genres
        case posterPath = "poster_path"
        case voteAverage = "vote_average"
        case overView = "overview"
        
    }
    
}


class MockMovieDiscriptionModel {
    var mockMovieDiscriptionModel =  MovieDiscriptionModel(id: 0, posterPath: "FlashImage", title: "Flash", status: "relize", tagline: "asasgasgasfg", budget: 6, voteAverage: 9.0, genres: [], overView: "Hello Hello Hello Hello Hello Hello Hello Hello Hello")
    func configureMovieDiscriptionModel () ->  MovieDiscriptionModel {
        return mockMovieDiscriptionModel
    }

}
