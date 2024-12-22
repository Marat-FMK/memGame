//
//  ContentView.swift
//  memGame
//
//  Created by Marat Fakhrizhanov on 18.12.2024.
//

import SwiftUI

struct QuestionView: View {
    @StateObject var viewModel = QuestionViewModel()
    
    @State private var text = ""
    var body: some View {
        NavigationView {
            VStack {
                
                
                
                ZStack(alignment: .topLeading) {
                    TextField("", text: $text)
                        .textFieldStyle(.roundedBorder)
                        .padding(20)
                    
                    Text("Question")
                        .font(.system(size: 13))
                        .padding(10)
                        .offset(x: 30, y: 3)
                }
                
                Button {
                    print("tap")
                    viewModel.getMems() 
                    print(viewModel.mems)

                } label: {
                    Text("Fetch mems")
                        .padding(20)
                }
                
                NavigationLink {
                    
                    AnswerView(mems: viewModel.mems.shuffled())
//                    Text("View")
                } label: {
                    Text("See mem")
                        .bold()
                        .foregroundStyle(Color.red)
                }
                
                
            }
            
        }
    }
}

#Preview {
    QuestionView()
}
