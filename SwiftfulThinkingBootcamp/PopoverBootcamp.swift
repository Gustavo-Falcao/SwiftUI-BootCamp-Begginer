//
//  PopoverBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 07/10/26.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State private var showScreen: Bool = false
    
    var body: some View {
        ZStack {
            Color.orange
                .ignoresSafeArea()
            
            VStack {
                Button("BUTTON") {
                    withAnimation(.snappy(duration: 0.6)){
                        showScreen.toggle()
                    }
                }
                .font(.largeTitle)
                Spacer()
            }
            //METHOD 1 - SHEET
//            .sheet(
//                isPresented: $showScreen,
//                content: {
//                    NewScreen()
//                }
//            )
            //METHOD 2 - TRANSITION
            ZStack {
                if showScreen {
                    NewScreen(showScreen: $showScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                    //entender porque .animation(.spring(duration:0.6)) diretamente no elemento nao funciona, mas se eu coloco na acao do botao o withAnimation a mesma animacao funciona
                }
            }
            .zIndex(2.0)
            
            //METHOD 3 - ANIMATION OFFSET
//            NewScreen(showScreen: $showScreen)
//                .padding(.top, 100)
//                .offset(y: showScreen ? 0 : UIScreen.main.bounds.height)
            
        }
    }
}

struct NewScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showScreen: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .ignoresSafeArea()
                
            Button(action: {
                //presentationMode.wrappedValue.dismiss()
                withAnimation(.spring(duration: 0.5)) {
                    showScreen.toggle()
                }
            }, label: {
             Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            })
        }
    }
}

#Preview {
    PopoverBootcamp()
}
