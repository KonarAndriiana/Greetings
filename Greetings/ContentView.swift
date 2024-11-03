//
//  ContentView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI
struct ContentView: View {
    
    let messages: [DataItemModel] = [
        .init(text: "Hello there !", color: .green),
        .init(text: "Welcome to SWIFT Programing", color: .gray),
        .init(text: "Are you ready to , ", color: .yellow),
        .init(text: "start expoliring ?", color: .red),
        .init(text: "Boom.", color: .purple),
        .init(text: "Let's go !", color: .blue)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            ForEach(messages) {
                dataItem in TextView(text: dataItem.text, color: dataItem.color)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
