//
//  QuestionViewModel.swift
//  memGame
//
//  Created by Marat Fakhrizhanov on 18.12.2024.
//


import SwiftUI
@Observable
class QuestionViewModel: ObservableObject {
    
    let networkManager = NetworkManager()
    
    
    var mems: [Mem] = []
    
    func getMems() {
//        let mems: AllMemes?
        
        networkManager.fetchMems { result in
            switch result {
                
            case .success(let result):
                
                if let mems = result.data?.memes {
                    self.mems = mems
                }
                
            case .failure( let error):
               print(error)
            }
        }
    }
    
    
}


