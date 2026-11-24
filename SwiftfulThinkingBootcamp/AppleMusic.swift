//
//  AppleMusic.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 17/09/26.
//

import SwiftUI

struct AppleMusic: View {
    @State private var value: String = ""
    var columns: [GridItem] = [
        GridItem(.adaptive(minimum: 130), spacing: 12)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 12, pinnedViews: .sectionFooters) {
                Section {
                    CardView(title: "Apple Music Radio", backgroundColor: .pink)
                    CardView(title: "Voices od Brazil", backgroundColor: .green)
                    CardView(title: "Brazilian Pop", backgroundColor: .custom)
                    CardView(title: "Sertanejo", backgroundColor: .orange)
                    CardView(title: "Brazilian Hip-Hop", backgroundColor: .blue)
                    CardView(title: "Samba", backgroundColor: .custom)
                    CardView(title: "Baile Funk", backgroundColor: .blue)
                    CardView(title: "MPB", backgroundColor: .custom)
                    CardView(title: "Rock", backgroundColor: .orange)
                    CardView(title: "Pop", backgroundColor: .pink)
                    CardView(title: "Spatial Audio", backgroundColor: .pink)
                    CardView(title: "DJ Mixes", backgroundColor: .mint)
                    CardView(title: "Concerts", backgroundColor: .red)
                    CardView(title: "Charts", backgroundColor: .teal)
                    CardView(title: "Sing", backgroundColor: .red)
                    CardView(title: "Apple Music Live", backgroundColor: .blue)
                    CardView(title: "Forró & Piseiro", backgroundColor: .custom)
                    CardView(title: "Brazilian Rock", backgroundColor: .orange)
                    CardView(title: "Classic Rock", backgroundColor: .orange)
                    CardView(title: "Alternative", backgroundColor: .yellow)
                    CardView(title: "Christian", backgroundColor: .teal)
                    CardView(title: "Electronic", backgroundColor: .mint)
                    CardView(title: "Dance", backgroundColor: .mint)
                    CardView(title: "Indie", backgroundColor: .mint)
                    CardView(title: "Hip Hop/Rap", backgroundColor: .indigo)
                    CardView(title: "Local", backgroundColor: .blue)
                    CardView(title: "Jazz", backgroundColor: .cyan)
                    CardView(title: "Blues", backgroundColor: .blue)
                    CardView(title: "Music Videos", backgroundColor: .purple)
                    CardView(title: "Pride", backgroundColor: .custom)
                } footer: {
                    VStack {
                        HStack {
                            HStack {
                               Image(systemName: "music.note")
                                    .foregroundStyle(.white.opacity(0.5))
                                    .padding(.horizontal, 12)
                                    .padding(.vertical, 8)
                                    .background(.white.opacity(0.2), in: RoundedRectangle(cornerRadius: 10))
                    
                                Text("Not playing")
                                    .font(.callout)
                                    .bold()
                            }
                    
                    
                            Spacer()
                    
                            HStack(spacing: 20) {
                                Image(systemName: "play.fill")
                                Image(systemName: "forward.fill")
                                    .foregroundStyle(.gray.opacity(0.5))
                            }
                            .font(.title2)
                    
                        }
                        .padding(.vertical, 8)
                        .padding(.horizontal, 20)
                        .frame(maxWidth: .infinity)
                        .glassEffect()
                    
                        HStack {
                            Image(systemName: "music.note.square.stack.fill")
                                .font(.title)
                                .padding(12)
                                .glassEffect(in: Circle())
                    
                            TextField(
                                "Artists, Songs, Lyrics...",
                                text: $value
                            )
                            .font(.title2)
                            .safeAreaInset(edge: .leading) {
                                Image(systemName: "magnifyingglass")
                                    .font(.title2)
                            }
                            .safeAreaInset(edge: .trailing) {
                                Image(systemName: "microphone")
                                    .font(.title2)
                            }
                            .padding()
                            .glassEffect()
                        }
                    }
                    .padding(.top)
                }
            }
            .padding(.horizontal, 8)
        }
    }
}

struct CardView: View {
    let title: String
    let backgroundColor: Color
    
    var body: some View {
        Text(title)
            .font(.title3)
            .frame(maxWidth: .infinity)
            .padding(.vertical, 30)
            .background(backgroundColor, in: RoundedRectangle(cornerRadius: 16))
    }
}


#Preview {
    AppleMusic()
}
