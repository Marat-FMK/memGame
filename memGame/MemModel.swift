//
//  MemModel.swift
//  memGame
//
//  Created by Marat Fakhrizhanov on 18.12.2024.
//

import Foundation

struct AllMemes: Decodable {
    let data: DataMemes?
}

struct DataMemes : Decodable {
    let memes: [Mem]?
}

struct Mem: Decodable {
    let id: String?
    let name: String?
    let url: String? 
}
