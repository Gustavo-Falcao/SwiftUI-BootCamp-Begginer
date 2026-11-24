//
//  IconsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 28/08/26.
//

import SwiftUI

struct IconsBootcamp: View {
    var body: some View {
        Image(systemName: "folder.fill.badge.plus")
            //.renderingMode(.original) - generico para image
            .symbolRenderingMode(.monochrome)// especifico para SF Symbols
            .font(.largeTitle)
            //.resizable()
            //.aspectRatio(contentMode: .fill)
            //.scaledToFit()
            //.scaledToFill()
            //.font(.caption)
            //.font(.system(size: 100))
            .foregroundStyle(.blue)
            //.frame(width: 300, height: 300)
            //.clipped()
    }
}

#Preview {
    IconsBootcamp()
}
