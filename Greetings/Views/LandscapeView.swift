//
//  LandscapeView.swift
//  Greetings
//
//  Created by Andriiana Konar on 07/11/2024.
//

import SwiftUI

struct LandscapeView: View {
    var body: some View {
        ZStack {
            
            BackgroundView()
            
            HStack() {
                VerticalTitleView()
                
                Spacer()
                
                MessagesView()
            }
            .padding()
        }
    }
}

#Preview {
    LandscapeView()
}
