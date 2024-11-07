//
//  RotatableCircleView.swift
//  Greetings
//
//  Created by Andriiana Konar on 07/11/2024.
//

import SwiftUI

struct RotatableCircleView: View {
    
    let lineWidth = 15.0
    let diameter = 70.0
 
    @State private var IsRotated: Bool = false
    var angle: Angle {
        IsRotated ? .zero : Angle(degrees: 360)
    }
    
    var angualarGradient: AngularGradient {
        AngularGradient(gradient: Gradient(colors: [.pink, .blue , .green]), center: .center, angle: .zero)
    }

    
    var body: some View {
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

#Preview {
    RotatableCircleView()
}
