//
//  NavigationStackBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 10/10/26.
//

import SwiftUI

struct NavigationStackBootcamp: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<50) { _ in
                        Text("Hello, World")
                            .padding(10)
                    }
                }
            }
            .navigationTitle("All Inboxes")
            .toolbarTitleDisplayMode(.automatic)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    HStack(spacing: 20) {
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    }
                    .padding(12)
                    
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        OtherScreen()
                    } label: {
                        Image(systemName: "gear")
                    }
                    .tint(.red)
                }
                
                ToolbarSpacer(
                    .flexible,
                    placement: .bottomBar
                )
                
                ToolbarItem(placement: .bottomBar) {
                    Image(systemName: "plus")
                }
                
            }
            
        }
    }
}

struct OtherScreen: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
         
            VStack(spacing: 20) {
                Button("BACK BUTTON") {
                    dismiss()
                }
                
                NavigationLink("Click here") {
                    Text("3rd screen!")
                }
            }
        }
        .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    NavigationStackBootcamp()
}
