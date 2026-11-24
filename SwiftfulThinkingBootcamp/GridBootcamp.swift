//
//  GridBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 18/09/26.
//

import SwiftUI

struct GridBootcamp: View {
    
    //Quero um grid vertical com 3 colunas flexiveis
    //as linhas surgem conforme necessario
    let columns: [GridItem] = [
        GridItem(
            .adaptive(minimum: 120),
            spacing: 6
        )
    ]
    
    //.flexible
        //Significa que essa coluna pode se adaptar ao espaço disponivel dentro dos limites permitidos
    //.fixed
        //Significa que as larguras terao o tamanho fixo definido
    //.adaptative - muito utilizado
        //ex: .adptative(minimum: 100))
        //Significa que tera quantas colunas couberem, desde que cada item tenha no mínimo 100pt
    
    var body: some View {
        
//        ScrollView {
//            Rectangle()
//                .fill(.gray)
//                .frame(height: 400)
//            
//            LazyVGrid(columns: columns) {
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .frame(height: 120)
//                }
//            }
//        }
        
        ScrollView {
            
            Grid {
                GridRow {
                    Text("Nome")
                    Text("Idade")
                }
                .frame(width: 100, height: 100)
                .background(.white)
                GridRow {
                    Text("Nick")
                    Text("32")
                }
                .frame(width: 100, height: 100)
                .background(.white)
                GridRow {
                    Text("Ana")
                    Text("30")
                }
                .frame(width: 100, height: 100)
                .background(.white)
            }
            .font(.title)
            .foregroundStyle(.black)
            .frame(maxWidth: .infinity, minHeight: 400)
            .background {
                Rectangle()
                    .fill(.gray)
            }
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header:
                                Text("Section 1")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .frame(height: 120)
                        }

                    }
                    
                    Section(header:
                                Text("Section 2")
                        .foregroundStyle(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 8)
                        .padding(.horizontal, 12)
                        .background(.red)
                        .padding()
                    ) {
                        ForEach(0..<20) { index in
                            Rectangle()
                                .fill(.green)
                                .frame(height: 120)
                        }

                    }
                    
                }
            )
        }
    }
    
    //Section
        //Serve para agrupar conteudo relacionado dentro de containers que entendem secoes
        //Lugares mais comuns sao Lis, Form, LazyVStack/LazyVGrid, com pinnedViews, e alguns containers de configuracao
        //Pode pensar em section como um agrupamento semantico de conteudo dentro de um container maior
}

#Preview {
    GridBootcamp()
}
