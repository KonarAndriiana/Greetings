//
//  MainView.swift
//  Greetings
//
//  Created by Andriiana Konar on 07/11/2024.
//

import SwiftUI

struct MainView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    var body: some View {
        //Portrait mode
        if horizontalSizeClass == .compact && verticalSizeClass == .regular {
            GreetingsView()
        } else {
            LandscapeView()
        }
    }
}

#Preview {
    MainView()
}
