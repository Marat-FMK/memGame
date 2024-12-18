//
//  NetworkManager.swift
//  memGame
//
//  Created by Marat Fakhrizhanov on 18.12.2024.
//

import Foundation

enum ErrorList: Error {
    case invalidURL
    case noData
    case decodError
    case reguestError
}

class NetworkManager {
    let link = "https://api.imgflip.com/get_memes"
    
    func fetchMems(completion: @escaping (Result<AllMemes, Error>) -> Void) {
        
        guard let url = URL(string: link) else {
            completion(.failure(ErrorList.invalidURL))
            return
        }
        
        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _ , error in
            
            guard error == nil else {
                completion(.failure(error!))
                return }
            
            guard let data else {
                completion(.failure(ErrorList.noData))
                return }
            
            if let responce = try? JSONDecoder() .decode (AllMemes.self, from: data) {
                completion(.success(responce))
            } else {
                completion(.failure(ErrorList.decodError))
            }
        }
        .resume()
    }
}
       
    

