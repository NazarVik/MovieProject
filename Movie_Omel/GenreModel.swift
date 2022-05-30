//
//  GenreModel.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 4.03.22.
//

import Foundation

struct GenreModel {
    var genres : [Genres]
    
}

struct Genres {
    let id: Int
    let name: String
}

class MockGenreModel {
    var mockGenreArray = GenreModel(genres: [])
//    var genreArray : GenreModel?
    func configureGenreModel() -> GenreModel {
        mockGenreArray.genres.append(Genres(id: 0, name: "genre0"))
        mockGenreArray.genres.append(Genres(id: 1, name: "genre1"))
        mockGenreArray.genres.append(Genres(id: 2, name: "genre2"))
        mockGenreArray.genres.append(Genres(id: 3, name: "genre3"))
        mockGenreArray.genres.append(Genres(id: 4, name: "genre4"))
        mockGenreArray.genres.append(Genres(id: 5, name: "genre5"))
        mockGenreArray.genres.append(Genres(id: 6, name: "genre6"))
        mockGenreArray.genres.append(Genres(id: 7, name: "genre7"))
        mockGenreArray.genres.append(Genres(id: 8, name: "genre8"))
        mockGenreArray.genres.append(Genres(id: 9, name: "genre9"))
        
        return mockGenreArray
    }
}
