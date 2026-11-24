//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 28/08/26.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("matriz-esforco-valor")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 200)
            .clipShape(.rect(cornerRadius: 15))
            //.clipped()
            //.cornerRadius(15)
            //.clipShape(
                //Circle()
                //RoundedRectangle(cornerRadius: 25)
                //Ellipse()
            //)
    }
}

#Preview {
    ImageBootcamp()
}
