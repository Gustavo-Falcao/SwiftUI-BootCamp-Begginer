//
//  TransitionBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 06/10/26.
//

import SwiftUI

struct TransitionBootcamp: View {
    @State private var showView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                Button("BUTTON") {
                    withAnimation(.snappy) {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            if showView {
                RoundedRectangle(cornerRadius: 30)
                    //usada para dimensionar uma View relativamente ao container mais próximo
                    .containerRelativeFrame(.vertical) { height, _ in
                        height * 1.0  
                    }
                    .transition(.move(edge: .bottom))
                //.animation(.easeInOut, value: showView)
                //.transition(.slide)
                    //.animation(.easeInOut, value: showView)
//                    .transition(
//                        AnyTransition
//                            .opacity
//                            .animation(.easeInOut)
//                    )
//                    .transition(
//                        AnyTransition
//                            .scale
//                            .animation(.easeInOut)
//                    )
//                    .transition(
//                        .asymmetric(
//                            insertion: .move(edge: .bottom),
//                            removal: AnyTransition.opacity.animation(.easeInOut)
//                        ))
                
            }
        }
        .ignoresSafeArea(
            .container,
            edges: .bottom
        )

        
    }
}

#Preview {
    TransitionBootcamp()
}
