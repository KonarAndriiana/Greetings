//
//  BackgraoundView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI
///This is background 
struct BackgroundView: View {
    var body: some View {
        LinearGradient(colors: [Color.blue1, Color.blue2] , startPoint: .topLeading, endPoint: .bottomTrailing).opacity(1).ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
