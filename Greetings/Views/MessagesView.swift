//
//  MessagesView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI

struct MessagesView: View {
    let messages: [DataItemModel] = [
        .init(text: "Hello there !", color: Color(.green1)),
        .init(text: "Welcome to SWIFT Programing", color: Color(.gray1)),
        .init(text: "Are you ready to , ", color: Color(.yellow1)),
        .init(text: "start expoliring ?", color: Color(.red1)),
        .init(text: "Boom.", color: Color(.purple1))
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(messages) {
                dataItem in TextView(text: dataItem.text, color: dataItem.color)
            }
        }
    }
}

#Preview {
    MessagesView()
}
