//
//  StateBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 18/09/26.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var myTitle: String = "My title"
    @State var backgroundColor: Color = Color.green
    @State var count: Int = 0
    
    var body: some View {
        
        VStack(spacing: 20) {
            Text(myTitle)
                .font(.title)
            Text("Count: \(count)")
                .font(.headline)
                .underline()
            
            HStack(spacing: 20) {
                Button("Button 1") {
                    backgroundColor = .red
                    myTitle = "BUTTON 1 was pressed"
                    count += 1
                }
                
                Button("Button 2") {
                    backgroundColor = .purple
                    myTitle = "BUTTON 2 was pressed"
                    if count > 0 {
                        count -= 1
                    }
                }
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(backgroundColor)
    }
}

#Preview {
    StateBootcamp()
}
