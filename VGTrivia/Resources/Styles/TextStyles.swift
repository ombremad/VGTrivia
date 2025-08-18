//
//  TextStyles.swift
//  VGTrivia
//
//  Created by Anne Ferret on 18/08/2025.
//

import SwiftUI

struct AppForumHeader: View {
    let text: String
    
    init(_ text: String) {
        self.text = text
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Text(text)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
                    .font(.appTitle)
                    .foregroundStyle(Color.foreground)
                    .padding(.horizontal, 22)
                    .padding(.vertical, 8)
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
                .frame(height: 4)
            }
            .background(Color.foreground.opacity(0.05))
        }
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    TestView()
        .background(Color.background)
        .font(.appBody)
}
