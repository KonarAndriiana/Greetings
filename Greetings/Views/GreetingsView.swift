//
//  ContentView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI
struct GreetingsView: View {
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            VStack(alignment: .leading) {
                TitleView()
                
                Spacer()
                
                MessagesView()
                
                Spacer()
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GreetingsView()
}
