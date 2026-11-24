//
//  StacksBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 31/08/26.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstack -> Vertical
    // Hstack -> Horizontal
    // Zstack -> organiza Views no eixo Z (back -> front)
    // .zIndex() -> altera explicitamente a ordem do eixo Z
    var body: some View {
//        VStack(alignment: .leading, spacing: 10, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 200, height: 200)
//            
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        })
        
//        HStack(alignment: .top, spacing: 20, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 100, height: 100)
//            
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 50, height: 50)
//        })
        
//        ZStack(alignment: .center, content: {
//            Rectangle()
//                .fill(Color.red)
//                .frame(width: 150, height: 150)
//            
//            Rectangle()
//                .fill(Color.yellow)
//                .frame(width: 50, height: 50)
//                .zIndex(1)
//
//            Rectangle()
//                .fill(Color.green)
//                .frame(width: 100, height: 100)
//        })
        
        VStack(spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(Color.white)
                
            }
            
            Text("1")
                .font(.title)
                .foregroundStyle(Color.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
        }
    }
}

#Preview {
    StacksBootcamp()
}
