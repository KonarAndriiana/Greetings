//
//  TitleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 03/11/2024.
//

import SwiftUI

/// This is a title view of the app which displayes a title , a subtitle which randomly changes on tap and we have colorful disc which rotates on tap
struct TitleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
 
    @State private var IsRotated: Bool = false
    var angle: Angle {
        IsRotated ? .zero : Angle(degrees: 360)
    }
    
    var angualarGradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.pink, .blue , .green]), center: .center, angle: .zero)
    }
    
    @State private var subttile: LocalizedStringKey = "Explore IOS Programming"
    
    let subttitles: [LocalizedStringKey] = [ "Exploring iOS Programming" , "Learning how to bake" , "Programming recipes" , "Exploring SwiftUI"]
    
    var body: some View {
        HStack {
            VStack(alignment: .leading , spacing: 0){
                Text("Greetings")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(subttile)
                    .font(.headline)
                    .fontWeight(.thin)
            }
            .onTapGesture {
                subttile = subttitles
                    .randomElement() ?? LocalizedStringKey("Error")
            }
            
            Spacer()
            
            Circle()
                .strokeBorder(angualarGradient, lineWidth: lineWidth)
                .rotationEffect(angle)
                .frame(width: diameter, height: diameter)
                .onTapGesture {
                    withAnimation {
                        IsRotated.toggle()
                    }
                }
        }
    }
}

#Preview {
    VStack {
        TitleView()
        Spacer()
    }
    .padding()
}