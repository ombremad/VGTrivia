//
//  ButtonStyles.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

struct TriviaButton: ButtonStyle {
    let backgroundColor: Color
    
//    @State private var isAnimating = false
    
    init(backgroundColor: Color = .babyBlue) {
        self.backgroundColor = backgroundColor
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 45, maxHeight: 45)
            .lineLimit(2)
            .multilineTextAlignment(.center)
            .padding()
            .foregroundColor(.foreground.opacity(0.9))
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.foreground.opacity(0.9), lineWidth: 2)
            )
            .cornerRadius(20)
            .font(.appButton)
            .shadow(
                color: .foreground.opacity(0.9),
                radius: 0,
                x: 0,
                y: /*isAnimating ? 12 : */3,
            )
//            .scaleEffect(isAnimating ? 0.85 : 1)
//            .animation(.easeInOut(duration: 0.10), value: isAnimating)
//            .onChange(of: configuration.isPressed) { relaxed, pressed in
//                if pressed {
//                    isAnimating = true
//                } else {
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
//                        isAnimating = false
//                    }
//                }
//            }
    }
}

struct DummyButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 45, maxHeight: 45)
            .padding()
            .background(.charcoal)
            .shadow(
                color: .foreground.opacity(0.9),
                radius: 0,
                x: 0,
                y: 3,
            )
    }
}

#Preview {
    TestView()
        .background(Color.background)
        .font(.appBody)
}
