//
//  TreinoDashboard.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 08/09/26.
//

import SwiftUI

struct TreinoDashboard: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0) {
            
            VStack(spacing: 0) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("BOM DIA")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.secondary)
                    Text("Seu treino de hoje")
                        .font(.largeTitle)
                        .bold()
                        .foregroundStyle(.textPrimary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 24)
                
                Image("parque-barigui-picture")
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipShape(.rect(cornerRadius: 24))
                    .overlay(alignment: .bottomLeading) {
                        HStack(alignment: .top) {
                            VStack(alignment: .leading) {
                                Text("Corrida no Parque")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .foregroundStyle(.white)
                                Text("Treino de velocidade")
                                    .font(.subheadline)
                                    .foregroundStyle(.white.opacity(0.8))
                            }
                            Spacer()
                            Image(systemName: "heart.fill")
                                .foregroundStyle(.favorite)
                                .background {
                                    Circle()
                                        .glassEffect(.clear)
                                        .frame(width: 40, height: 40)
                                }
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background {
                            RoundedRectangle(cornerRadius: 24)
                                .fill(
                                    LinearGradient(
                                        colors: [
                                            .black.opacity(0.75),
                                            .clear
                                        ],
                                        startPoint: .bottom,
                                        endPoint: .top
                                    )
                                )
                        }
                    }
            }
            
            VStack(alignment: .leading, spacing: 0) {
                Text("RESUMO")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.textPrimary)
                    .padding(.bottom, 12)
                
                VStack(alignment: .leading, spacing: 12) {
                    HStack(spacing: 12) {
                        VStack(alignment:.leading) {
                            Text("5.0 km")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(.textPrimary)
                            Text("Distancia")
                                .font(.subheadline)
                                .foregroundStyle(.textSecondary)
                        }
                        .padding()
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.backgroundCard)
                                .shadow(
                                    color: .black.opacity(0.06),
                                    radius: 10,
                                    x: 0, y: 4)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("24:30")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(.textPrimary)
                            Text("Tempo")
                                .font(.subheadline)
                                .foregroundStyle(.textSecondary)
                        }
                        .padding()
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.backgroundCard)
                                .shadow(
                                    color: .black.opacity(0.06),
                                    radius: 10,
                                    x: 0, y: 4)
                        }
                        
                        VStack(alignment: .leading) {
                            Text("4:54/km")
                                .font(.title2)
                                .fontWeight(.semibold)
                                .foregroundStyle(.textPrimary)
                            Text("Ritmo")
                                .font(.subheadline)
                                .foregroundStyle(.textSecondary)
                        }
                        .padding()
                        .background{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(.backgroundCard)
                                .shadow(
                                    color: .black.opacity(0.06),
                                    radius: 10,
                                    x: 0, y: 4)
                        }
                        
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.top, 32)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            VStack(alignment: .leading) {
                Text("META SEMANAL")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.textPrimary)
                    .padding(.bottom, 12)
                HStack(spacing: 20) {
                    ZStack {
                        Circle()
                            .stroke(
                                Color.gray.opacity(0.15),
                                style: StrokeStyle(lineWidth: 14, lineCap: .round)
                            )
                        
                        Circle()
                            .trim(from: 0, to: 0.75)
                            .stroke(
                                LinearGradient(
                                    colors: [.first, .accentPurple],
                                    startPoint: .leading,
                                    endPoint: .trailing
                                ),
                                style: StrokeStyle(lineWidth: 14, lineCap: .round)
                            )
                        
                        Text("75%")
                            .font(.title2)
                            .bold()
                    }
                    .frame(width: 120, height: 120)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("15 km")
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.textPrimary)
                        
                        Text("de 20 km concluídos")
                            .font(.subheadline)
                            .foregroundStyle(.textSecondary)
                        
                        Text("Faltam 5 km")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundStyle(.first)
                    }
                    
                }
            }
            .padding(.top, 32)
            
            VStack(alignment: .leading) {
                Text("PRÓXIMO TREINO")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.textPrimary)
                    .padding(.bottom, 12)
                
                HStack {
                    HStack(spacing: 30) {
                        Image(systemName: "figure.run")
                            .foregroundStyle(Color.first)
                            .background{
                                Circle()
                                    .fill(.first.opacity(0.10))
                                    .frame(width: 44, height: 44)
                            }
                        
                        VStack(alignment: .leading) {
                            Text("Intervalado")
                                .font(.headline)
                                .fontWeight(.semibold)
                            Text("5 x 1000m")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                    }
                    .padding(.leading)
                    
                    Spacer()
                    
                    Image(systemName: "chevron.right")
                        .foregroundStyle(Color.textSecondary)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background{
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white)
                        .shadow(color: Color.black.opacity(0.1), radius: 10, x: 0, y: 4)
                }
            }
            .padding(.top, 32)
            
        }
        .padding(.horizontal, 20)
        .frame(maxHeight: .infinity, alignment: .top)
        .background(Color.backgroundApp)
    }
}

#Preview {
    TreinoDashboard()
}
