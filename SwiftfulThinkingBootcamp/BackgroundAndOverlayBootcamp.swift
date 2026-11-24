//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 31/08/26.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        //        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //            .background(
        //                Circle()
        //                    .fill(LinearGradient(gradient: Gradient(colors: [.blue, .red]), startPoint: .leading, endPoint: .trailing))
        //                    .frame(width: 100, height: 100, alignment: .center)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(
        //                        LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
        //                    )
        //                    .frame(width: 120, height: 120, alignment: .center)
        //            )
        
        // OverLay works the same way as background excpet they go on top of each other instead of behind of each other
        
        //        Circle()
        //            .fill(Color.pink)
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Text("1")
        //                    .font(.largeTitle)
        //                    .foregroundStyle(.white)
        //            )
        //            .background(
        //                Circle()
        //                    .fill(Color.purple)
        //                    .frame(width: 110, height: 110)
        //            )
        
        //      Rectangle()
        //            .frame(width: 100, height: 100)
        //            .overlay(
        //                Rectangle()
        //                    .fill(Color.blue)
        //                    .frame(width: 50, height: 50),
        //                alignment: .topLeading
        //            )
        //            .background(
        //                Rectangle()
        //                    .fill(Color.red)
        //                    .frame(width: 150, height: 150),
        //                alignment: .bottomTrailing
        //            )
        
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [Color("GradientStart"), Color("GradientEnd")]),
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: Color("ShadowPurple"), radius: 5, x: 0, y: 10)
                    .overlay(alignment: .bottomTrailing) {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundStyle(Color.white)
                            )
                            .shadow(
                                color: Color("ShadowPurple"),
                                radius: 10,
                                x: 5,
                                y: 5
                            )
                    }
                
            )
            .background() {
                RoundedRectangle(cornerRadius: 20)
                    .fill(.bar)
                    .frame(width: 300, height: 300)
            }
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
