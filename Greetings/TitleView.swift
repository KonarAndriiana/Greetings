//
//  TitleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        VStack(alignment: .leading , spacing: 0){
            Text("Greetings")
                .font(.largeTitle)
                .fontWeight(.semibold)
            Text("Explore IOS Programming")
                .font(.headline)
                .fontWeight(.thin)
        }
    }
}

#Preview {
    TitleView()
}
