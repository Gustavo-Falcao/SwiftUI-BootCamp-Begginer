//
//  ConditionalBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 19/09/26.
//

import SwiftUI

struct ConditionalBootcamp: View {

    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {

            Button("IS LOADING: \(isLoading.description)") {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            }
            
            //            Button("Circle Button") {
//                showCircle.toggle()
//            }
//            
//            Button("Rectangle Button") {
//                showRectangle.toggle()
//            }
//            
//            if showCircle {
//                Circle()
//                    .frame(width: 100, height: 100)
//            } else if showRectangle {
//                Rectangle()
//                    .frame(width: 100, height: 100)
//            }
            
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
