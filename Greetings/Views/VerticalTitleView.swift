//
//  SwiftUIView.swift
//  Greetings
//
//  Created by Andriiana Konar on 07/11/2024.
//

import SwiftUI

struct SwiftUIView: View {
    @State private var subtitle: LocalizedStringKey = "Exploring iOS Programming"
    
    var body: some View {
        VStack(alignment: .leading) {
            GreetingTextView(subttile: $subtitle)
            
            
            RotatableCircleView()
        }
    }
}

#Preview {
    SwiftUIView()
}
