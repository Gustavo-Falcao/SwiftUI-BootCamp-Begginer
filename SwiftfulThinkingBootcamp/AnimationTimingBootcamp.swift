//
//  AnimationTimingBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 06/10/26.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State var isAnimating: Bool = false
    let timing: Double = 5.0
    
    var body: some View {
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(
//                    .spring(
//                        response: 0.7,
//                        dampingFraction: 0.8,
//                        blendDuration: 1.0
//                    ),
//                    value: isAnimating)
                    //novo innitializer para spring
                    .spring(
                        duration: 0.5,//quanto tempo aproximadamente
                        bounce: 0.3//quanto rebote
                    ),
                    value: isAnimating
                )
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.smooth, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.snappy, value: isAnimating)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 350 : 50, height: 100)
                .animation(.bouncy, value: isAnimating)
            
            //atualmente existem três springs pré-configuradas modernas
                // todas podem ser customizadas com duration e extraBounce
                //.smooth
                    //é uma spring suave, sem bounce perceptível
                    //boa para: mudanças de layout; redimensionamento; movimentos suaves
                //.snappy
                    //é uma spring com pouca quantidade de bounce e sensação mais ágil
                    //tem uma resposta mais rápida e um pequeno bounce
                    //boa para: botoes; selecoes; cards; interacoes rapidas
                //.bouncy
                    //possui um bounce maior
                    //boa para: elasticidade; playfulness; feedback chamativo
            
            //spring -> simula aproximadamete um sistema físico de mola.
                //response
                    //está relacionado com a rigidez da mola e é aproximadamente uma duração em segundos
                    //valores menores produzem uma resposta mais rápida/rígida
                //dampingFraction
                    //representa quanto amortecimento existe na mola.
                    //quanto menor for o damping mais bounce tera e ao contrário menos bounce tera
                //blendDuration
                    //ela entra principalmente quando uma animação spring é substituída por outra enquanto ainda está ocorrendo
                    //o valor é o período utilizado para interpolar mudanças no response entre springs
            
            //all the animations will finish at the same time by default
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.linear(duration: timing), value: isAnimating)
//            //linear = same speed from start to end
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeIn(duration: timing), value: isAnimating)
//            //easeIn = slow at first and fast at the end
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeInOut(duration: timing), value: isAnimating)
//            //easeInOut = slow fast and slow
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 350 : 50, height: 100)
//                .animation(.easeOut(duration: timing), value: isAnimating)
            //easeOut = fast and then slow
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
