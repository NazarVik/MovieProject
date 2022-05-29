//
//  NetworkDataGenres.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 29.05.22.
//

import Foundation

class NetworkDataGenres {
    
    let networkService = NetworkService()
    
    func fetcherData(urlString: String, response: @escaping (GenreModel?) -> Void) {
        networkService.request(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let genreList = try JSONDecoder().decode(GenreModel.self, from: data)
                    response(genreList)
                } catch let jsonError {
                    print ("Failed to decode JSON", jsonError)
                    response(nil)
                }
            case .failure(let error):
                print ("Error received requesting data:\(error.localizedDescription)")
                response(nil)
            }
            
        }
    }
}

