//
//  BindingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 19/09/26.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.largeTitle)
            
            ButtonView(
                backgroundColor: $backgroundColor,
                title: $title
            )
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

struct ButtonView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "Title changed"
        }, label: {
            Text("Button")
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .clipShape(.rect(cornerRadius: 10))
        })
    }
}

#Preview {
    BindingBootcamp()
}
