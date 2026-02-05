//
//  BigTitleButton.swift
//  VGTrivia
//
//  Created by Anne Ferret on 02/10/2025.
//

import SwiftUI

struct BigTitleButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(.foreground.opacity(0.7))
            .font(.appBigTitle)
            .lineLimit(1)
            .offset(y: configuration.isPressed ? -5 : 0)
            .scaleEffect (configuration.isPressed ? 0.9 : 1)
            .animation(.easeInOut(duration: 0.05), value: configuration.isPressed)
    }
}
