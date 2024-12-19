//
//  AnswerView.swift
//  memGame
//
//  Created by Marat Fakhrizhanov on 18.12.2024.
//

import SwiftUI

struct AnswerView: View {
    
    let mems: [Mem]
    
    var body: some View {
        VStack{
            
            AsyncImage(url: URL(string: mems[3].url!)) { phase in
                if let image = phase.image {
                    
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 250, height: 350)
                }
            }
            
        }
            
        
        
        
    }
}

//#Preview {
//    AnswerView(mem: Mem(id: "12345", name: "rand name", url: "https://i.imgflip.com/26am.jpg"))
//}
