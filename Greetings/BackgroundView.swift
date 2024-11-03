//
//  BackgraoundView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI

struct BackgraoundView: View {
    var body: some View {
        LinearGradient(colors: [.blue, Color(red: 139/255, green: 80/255, blue: 240/255)] , startPoint: .topLeading, endPoint: .bottomTrailing).opacity(0.3).ignoresSafeArea()
    }
}

#Preview {
    BackgraoundView()
}
