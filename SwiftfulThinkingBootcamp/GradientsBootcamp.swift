//
//  GradientsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 28/08/26.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .fill(
                //Color.blue
                LinearGradient(
                    stops: [
                        .init(color: .red, location: 0),
                        .init(color: .orange, location: 0.5),
                        .init(color: .yellow, location: 1)
                    ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
//                RadialGradient(
//                    gradient: Gradient(colors: [.yellow, .orange]),
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 400,
//                )
//                AngularGradient(
//                    gradient: Gradient(colors: [.yellow, .orange]),
//                    center: .topLeading,
//                    angle: .degrees(180 + 45)
//                )
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientsBootcamp()
}
