//
//  ExtractSubviewsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 18/09/26.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        VStack {
            contentLayer
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
    
    var contentLayer: some View {
        HStack {
            MyElement(title: "Apples", count: 1, color: .red)
            MyElement(title: "Oranges", count: 10, color: .orange)
            MyElement(title: "Bananas", count: 34, color: .yellow)
        }
    }
}

struct MyElement: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(.rect(cornerRadius: 10))
    }
}


#Preview {
    ExtractSubviewsBootcamp()
}
