//
//  TextBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Gustavo Duarte Falcão on 28/08/26.
//

import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, World! This is the Swiftful Thinking Bootcamp. I am really enjoying this course and learning alot.".capitalized)
            //.font(.body)
            //.fontWeight(.semibold)
//            .underline(true, color: Color.red)
//            .italic()
//            .strikethrough(true, color: Color.green)
//            .font(.system(size: 24, weight: .semibold, design: .rounded))
            //.baselineOffset(20)
            //.kerning(2)
            .multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: 100, alignment: .leading)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
