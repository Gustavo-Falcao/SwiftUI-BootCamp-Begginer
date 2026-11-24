//
//  SheetsBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 07/10/26.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var shwoSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            
            Button(action: {
                shwoSheet.toggle()
            }, label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background{
                        RoundedRectangle(cornerRadius: 10)
                            .fill(.white)
                    }
            })
//            .fullScreenCover(isPresented: $shwoSheet, content: {
//                SecondScreen()
                //é uma apresentação que cobre o máximo possível da tela
//                //it works the exact same way as sheet
//                //you can also only use one full screen cover per hierarchy
//                //we can't use both full screen or sheet on the same view hierarchy
//            })
            .sheet(isPresented: $shwoSheet, content: {
                SecondScreen()
                    .presentationDetents([
                        .fraction(0.3),
                        .large,
                        .medium
                    ])
                //presentationDetents é uma api moderna que permite que o conteúdo do sheet pode descansar na metade da tela e em tela cheia, e o usuário pode arrastá-la entre essas alturas.
                //também existe o .interactiveDismissDisabled() que é usado por exemplo em formulários que não podem ser fechado antes de salvar.
                //O sheet é uma apresentação modal cujo tamanho e aparência ficam sob controle do sistema e podem variar conforme plataforma, tamanho da janela e configuração
                //não espalhe dezenas de sheets controladas por dezenas de Booleans sem necessidade.
                //quando a apresentação do sheet depende de algum dado identificável
                    //exemplo:
                        /*
                         struct Workout: Identifiable {
                            let id: UUID
                            let name: String
                         }
                         
                         - Voce pode ter:
                         @State private var selectedWorkout: Workout?
                         
                         - E então:
                         .sheet(item: $selectedWorkout) { workout in
                            WorkoutDetails(workout: workout)
                         }
                         
                         - A própria existência do item já determina a apresentação:
                         selectedWorkout = nil -> não apresenta
                         
                         selectedWorkout = Workout -> apresenta sheet com aquele Workout
                         
                         - Se o item mudar, o sistema substitui a apresentação de acordo com o novo dado.
                         */
                //the sheet is going to create the content as soon as the view loads, so if you're adding conditional logic, it's not going to update with that conditional logic
            })
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.dismiss) private var dismiss
    //Aqui estou pedindo ao ambiente com o Environment:
        //qual é a ação de dismissal válida para este contexto de apresentação ?
        //e o switfUI fornece DismissAction
        //e esse tipo possui callAsFunction(), então é possível chamar como função abrindo os parenteses
    //O dismiss não pode ser criado na View que apresenta a sheet (nesse caso o SheetsBootcamp), pois aquele dismiss pertence ao ambiente de SheetsBootcamp e não necessáriamente ao ambiente da sheet, então o dismiss não saberá como fechar a sheet.
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .ignoresSafeArea()
            
            Button(action: {
                dismiss()
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
    SheetsBootcamp()
    //SecondScreen()
}
