//
//  NavigationViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 08/10/26.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        
        NavigationView {
            ScrollView {
                //Ao estar dentro de um NavigationView, não se deve criar um novo NavigationView
                NavigationLink(
                    "Hello, world",
                    destination: BoxView()
                )
                VStack(spacing: 20) {
                    ForEach(0..<50) { _ in
                        Text("Hello, World")
                            .frame(width: .infinity)
                    }
                }
                .frame(width: .infinity)
            }
            .navigationTitle("All Inboxes")
            .navigationBarTitleDisplayMode(.automatic)
            .navigationBarItems(
                leading:
                    HStack {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing: NavigationLink(
                    destination: BoxView(),
                    label: {
                        Image(systemName: "gear")
                    }
                ).accentColor(.red)
            )
        }
        
    }
}

struct BoxView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            
            VStack {
                Button("BACK BUTTON") {
                    dismiss()
                }
            }
            
            NavigationLink(
                "Click here",
                destination: Text("3rd screen!")
            )
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
