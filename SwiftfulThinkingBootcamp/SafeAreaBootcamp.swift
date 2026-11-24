//
//  SafeAreaBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 18/09/26.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        
//        ZStack {
//            //background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            //foreground
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//            }
//            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .background(.red)
//        }
        
        ScrollView {
            VStack {
                Text("Title goes here")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(0..<10) { index in
                    RoundedRectangle(cornerRadius: 25)
                        .frame(height: 150)
                        .padding(20)
                }
            }
        }
        .background(.blue)
        .background(Color.red
            .ignoresSafeArea())
        
        //Ao colocar apenas background e uma cor nele, a cor ja entra no safe area
        //A apple atualizou o SwiftUI para ja fazer essa funcao ?
        //Ao fazer como o nick mostrou, as cores da safe area deveriam ser vermelho e o backgroundo do app azul, mas no meu exemplo o background azul se sobrepos sobre sobre o vermelho nas safe areas.
    }
}

#Preview {
    SafeAreaBootcamp()
}
