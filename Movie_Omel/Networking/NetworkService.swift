//
//  NetworkService.swift
//  Movie_Omel
//
//  Created by Виктор Назаров on 29.05.22.
//

import Foundation

class NetworkService {
    
    func request(urlString: String, completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, responce, error) in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                }
                guard let data = data else {
                    return
                }
                completion(.success(data))
            }
        }.resume()
    }
}
