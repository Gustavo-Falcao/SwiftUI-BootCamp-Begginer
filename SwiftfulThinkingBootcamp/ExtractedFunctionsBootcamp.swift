//
//  ExtractedFunctionsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 18/09/26.
//

import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    
    @State var backgroundColor: Color = .pink
    
    var body: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
                .foregroundStyle(.black)
            buttonPrimary
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
    
    var buttonPrimary: some View {
        Button(action: {
            buttonPressed()
        }, label: {
            Text("Press me".uppercased())
                .font(.headline)
                .foregroundStyle(.white)
                .padding()
                .background(.black, in: RoundedRectangle(cornerRadius: 10))
        })
    }
    
    func buttonPressed() {
        backgroundColor = .yellow
    }
}

#Preview {
    ExtractedFunctionsBootcamp()
}
