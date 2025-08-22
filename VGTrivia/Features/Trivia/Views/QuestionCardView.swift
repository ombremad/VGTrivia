//
//  QuestionCardView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct QuestionCardView: View {
    let question : Question
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                VStack(spacing: 12) {
                    Text(question.title)
                        .font(.appTitle)
                    Text(question.content)
                    ForEach(question.answers, id:\.self) { answer in
                        Text(answer)
                    }
                }
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.foreground)
                .padding(.horizontal, 12)
                .padding(.vertical, 24)
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
    QuestionCardView(question: questions[0])
    .font(.appBody)
}
