//
//  ShapesBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 28/08/26.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule()
        //Rectangle()
//        RoundedRectangle(
//            cornerRadius: 20,
//            style: .continuous
//        )
            //.fill(Color.green)
            //.foregroundColor(.blue)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(.blue, lineWidth: 20)
        //.strokeBorder(.blue, lineWidth: 20)
//            .stroke(
//                Color.orange,
//                style: StrokeStyle(
//                    lineWidth: 30,
//                    lineCap: .round,
//                    dash: [30]
//                )
//            )
//            .trim(from: 0.2, to: 1.0)
//            .stroke(Color.purple, lineWidth: 30)
//            .frame(width: 300, height: 200)
        
        Circle()
            .trim(from: 0, to: 0.75)
            .stroke(
                .blue,
                style: StrokeStyle(
                    lineWidth: 20,
                    lineCap: .round
                )
            )
    }
}

#Preview {
    ShapesBootcamp()
}
