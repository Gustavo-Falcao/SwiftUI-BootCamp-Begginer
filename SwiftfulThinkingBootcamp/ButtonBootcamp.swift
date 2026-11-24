//
//  ButtonBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 18/09/26.
//

import SwiftUI

struct ButtonBootcamp: View {
    
    @State var title: String = "This is my title"
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(title)
            
            Button("Press me!") {
                self.title = "BUTTON WAS PRESSED"
            }
            
            Button(action: {
                self.title = "Button #2 was pressed"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .padding()
                    .padding(.horizontal, 20)
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.blue)
                            .shadow(radius: 10)
                    }
            })
            
            Button(action: {
                self.title = "Button #3"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 75, height: 75)
                    .shadow(color: .white.opacity(0.5) ,radius: 10)
                    .overlay(
                        Image(systemName: "heart.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.red)
                    )
            })
            
            Button(action: {
                self.title = "Button #4"
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundStyle(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            })
        }
        
    }
}

#Preview {
    ButtonBootcamp()
}
