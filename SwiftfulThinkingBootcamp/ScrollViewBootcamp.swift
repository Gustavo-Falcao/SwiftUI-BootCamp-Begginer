//
//  ScrollViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 14/09/26.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var body: some View {
        ScrollView {
//            VStack {
//                ForEach(0..<20) { index in
//                    ScrollView(.horizontal, content: {
//                        HStack {
//                            ForEach(0..<20) { index in
//                                RoundedRectangle(cornerRadius: 25)
//                                    .fill(.white)
//                                    .frame(width: 200, height: 150)
//                                    .padding()
//                            }
//                        }
//                    })
//                    
//                }
//            }
            
            LazyVStack {
                ForEach(0..<20) { index in
                    ScrollView(.horizontal, content: {
                        LazyHStack {
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25)
                                    .fill(.white)
                                    .frame(width: 200, height: 150)
                                    .padding()
                            }
                        }
                    })
                    .scrollIndicators(.visible)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    ScrollViewBootcamp()
}
