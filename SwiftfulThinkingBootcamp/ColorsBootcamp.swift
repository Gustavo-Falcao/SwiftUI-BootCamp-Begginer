//
//  ColorsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 28/08/26.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                Color(UIColor.secondarySystemBackground)
                //.custom
            )
            .frame(width: 300, height: 200)
            //.shadow(radius: 10)
            .shadow(
                color: Color(.custom)
                    .opacity(0.3),
                radius: 10,
                x: -20,
                y: -20
            )
    }
}

#Preview {
    ColorsBootcamp()
}
