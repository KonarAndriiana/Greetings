//
//  DataItemModel.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI

struct DataItemModel: Identifiable {
    let id = UUID()
    
    let text: LocalizedStringKey
    let color: Color
}
