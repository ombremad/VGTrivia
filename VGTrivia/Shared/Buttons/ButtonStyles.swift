//
//  ButtonStyles.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

struct TriviaButton: ButtonStyle {
    let backgroundColor: Color
        
    init(backgroundColor: Color = .babyBlue) {
        self.backgroundColor = backgroundColor
    }

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .frame(maxWidth: .infinity, minHeight: 45, maxHeight: 45)
            .lineLimit(2)
            .multilineTextAlignment(.center)
            .padding()
            .foregroundColor(.charcoal)
            .background(backgroundColor)
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(.charcoal.opacity(0.9), lineWidth: 2)
            )
            .cornerRadius(20)
            .font(.appButton)
            .shadow(
                color: .charcoal.opacity(0.9),
                radius: 0,
                x: 0,
                y: configuration.isPressed ? 10 : 3,
            )
            .offset(y: configuration.isPressed ? -5 : 0)
            .scaleEffect (configuration.isPressed ? 0.9 : 1)
            .animation(.easeInOut(duration: 0.05), value: configuration.isPressed)
    }
}

struct BigTitleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.charcoal)
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                RadialGradient(colors:[.pearl, .babyBlue, .minty, .peach], center: .center, startRadius: 100, endRadius: 150)
            )
            .clipShape(.capsule)
            .shadow(radius: 3)
            .font(.appBigTitle)
            .lineLimit(1)
            .offset(y: configuration.isPressed ? -5 : 0)
            .scaleEffect (configuration.isPressed ? 0.9 : 1)
            .animation(.easeInOut(duration: 0.05), value: configuration.isPressed)
    }
}

#Preview {
    TestView()
        .background(Color.background)
        .font(.appBody)
}
