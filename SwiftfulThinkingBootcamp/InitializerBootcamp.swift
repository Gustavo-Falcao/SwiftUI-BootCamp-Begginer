//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 12/09/26.
//

import SwiftUI

struct InitializerBootcamp: View {
    let backgroundColor: Color
    let count: Int
    let title: String
    let fruit: Fruit
    
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        self.fruit = fruit
        
        if(fruit == .apple) {
            backgroundColor = Color.red
        } else {
            backgroundColor = Color.orange
        }
        
        if(count == 1) {
            title = fruit.toStringSingular.capitalized
        } else {
            title = fruit.toStringPlural.capitalized
        }
    }
    
    enum Fruit {
        case apple
        case orange
        
        var toStringSingular: String {
            switch self {
            case .apple:
               return "apple"
            case .orange:
               return "orange"
            }
        }
        
        var toStringPlural: String {
            switch self {
            case .apple:
                return "apples"
            case .orange:
                return "oranges"
            }
        }
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .underline()
            
            Text(title)
                .font(.headline)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    
    HStack {
        InitializerBootcamp(count: 1, fruit: .orange)
        InitializerBootcamp(count: 3, fruit: .apple)
    }
}
