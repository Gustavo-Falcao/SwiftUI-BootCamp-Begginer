//
//  TernaryBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 19/09/26.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? .red : .blue)
                .frame(width: 200, height: 100)
        }
    }
}

#Preview {
    TernaryBootcamp()
}
