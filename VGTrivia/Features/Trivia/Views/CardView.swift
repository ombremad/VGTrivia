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
        VStack(spacing:16) {
            RainbowStack()
            Spacer()
            self.content
            Spacer()
        }
        .multilineTextAlignment(.center)
        .foregroundStyle(Color.foreground)
        .background(Color.foreground.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(height: 300)
    }
}

//#Preview {
//    CardView()
//}
