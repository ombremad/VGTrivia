//
//  CardView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 23/08/2025.
//

import SwiftUI

struct CardView<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing:12) {
            RainbowStack()
            Spacer()
            self.content
            Spacer()
        }
        .multilineTextAlignment(.leading)
        .lineSpacing(1.6)
        .foregroundStyle(Color.foreground)
        .background(Color.background)
        .clipShape(RoundedRectangle(cornerRadius: 20))
//        .frame(height: 320)
        .shadow(radius: 3)
    }
}

#Preview {
    CardView {
        Text("CardView")
    }
}
