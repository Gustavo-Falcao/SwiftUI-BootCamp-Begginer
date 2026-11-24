//
//  AnimationBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 06/10/26.
//

import SwiftUI

struct AnimationBootcamp: View {
    
    @State var isAnimated: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                //will animate things that are affected by the variabel isAnimated
                withAnimation(
                    .default
                        .delay(1)
                        .repeatCount(4, autoreverses: true)
                    ) {
                    isAnimated.toggle()
                }
                
            }
            Spacer()
            RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                .fill(isAnimated ? .red : .green)
                .frame(
                    width: isAnimated ? 100 : 300,
                    height: isAnimated ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimated ? 180 : 0))
                .offset(y: isAnimated ? 300 : 0)
//                .animation(
//                    .default
//                    .repeatForever(autoreverses: true),
//                    value: isAnimated
//                )
            
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
