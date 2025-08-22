//
//  RainbowStack.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct RainbowStack: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .fill(.babyBlue)
            Rectangle()
                .fill(.peach)
            Rectangle()
                .fill(.butter)
            Rectangle()
                .fill(.lavender)
            Rectangle()
                .fill(.minty)
        }
        .frame(height:5)
    }
}
