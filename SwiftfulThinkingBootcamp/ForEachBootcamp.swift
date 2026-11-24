//
//  ForEachBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 12/09/26.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let myArray = ["Apple", "Orange", "Banana", "Peach", "Mango"]
    
    var body: some View {
        
        VStack {
//            ForEach(myArray, id: \.self) { fruit in
//                fruitCard(text: fruit)
//            }
            ForEach(0..<5) { index in
                fruitCard(text: myArray[index])
            }
        }
    }
    
    private func fruitCard(text: String) -> some View {
        Text(text)
            .foregroundStyle(.black)
            .frame(width: 100, height: 100)
            .background{
                RoundedRectangle(cornerRadius: 16)
                    .fill(.white)
                    .shadow(color: .white.opacity(0.3), radius: 10, x: 4, y: 0)
            }
    }
}

#Preview {
    ForEachBootcamp()
}
