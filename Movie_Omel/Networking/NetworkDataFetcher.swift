//
//  NetworkDataFetcher.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 29.05.22.
//

import Foundation

class NetworkDataFetcher {
    
    let networkService = NetworkService()
    
    func fetcherData(urlString: String, response: @escaping (self?) -> Void) {
        networkService.request(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let movieData = try JSONDecoder().decode(<#T##type: Decodable.Protocol##Decodable.Protocol#>, from: data)
                    response(movieData)
                } catch let jsonError {
                    print ("Failed to decode JSON", jsonError)
                    response(nil)
                }
            }
            <#code#>
        }
    }
}
