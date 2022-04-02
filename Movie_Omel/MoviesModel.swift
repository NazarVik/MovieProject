//
//  File.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 11.03.22.
//

import Foundation

struct MoviesModel {
    let id: String?
    var item: [MovieItemModel]
}

struct MovieItemModel {
    let id: Int
    let originalTitle: String
    let overview: String
    let voteAverage: Double
    let posterPath: String
    
}

class MockMoviesModel {
    var mockMoviesModel = MoviesModel(id: nil, item: [])
    func configureMovieModel() -> MoviesModel {
        mockMoviesModel.item.append(MovieItemModel(id: 0, originalTitle: "0", overview: "0", voteAverage: 0, posterPath: "0"))
        mockMoviesModel.item.append(MovieItemModel(id: 1, originalTitle: "1", overview: "1", voteAverage: 1, posterPath: "1"))
        mockMoviesModel.item.append(MovieItemModel(id: 2, originalTitle: "2", overview: "2", voteAverage: 2, posterPath: "2"))
        mockMoviesModel.item.append(MovieItemModel(id: 3, originalTitle: "3", overview: "3", voteAverage: 3, posterPath: "3"))
        
        return mockMoviesModel
    }
}
