//
//  File.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 11.03.22.
//

import Foundation

struct MoviesModel {
    let id: String?
    var item: [overView]
}

struct overView {
    let id: Int
    let originalTitle: String
    let overview: String
    let voteAverage: Double
    let posterPath: String
}

class MockMoviesModel {
    var mockMoviesModel = MoviesModel(id: nil, item: [])
    func configureMovieModel() -> MoviesModel {
        mockMoviesModel.item.append(overView(id: 0, originalTitle: "0", overview: "Discription0", voteAverage: 0, posterPath: "0"))
        mockMoviesModel.item.append(overView(id: 1, originalTitle: "1", overview: "Discription1", voteAverage: 1, posterPath: "1"))
        mockMoviesModel.item.append(overView(id: 2, originalTitle: "2", overview: "Discription2", voteAverage: 2, posterPath: "2"))
        mockMoviesModel.item.append(overView(id: 3, originalTitle: "3", overview: "Discription3", voteAverage: 3, posterPath: "3"))
        mockMoviesModel.item.append(overView(id: 4, originalTitle: "4", overview: "Discription4", voteAverage: 4, posterPath: "4"))
        mockMoviesModel.item.append(overView(id: 5, originalTitle: "5", overview: "Discription5", voteAverage: 5, posterPath: "5"))
        return mockMoviesModel
    }
}
