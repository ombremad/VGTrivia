//
//  QuestionCardView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct QuestionView: View {
    let question : Question
    
    private func card() -> some View {
        VStack {
            VStack(spacing: 18) {
                Text(question.title)
                    .font(.appTitle)
                Text(question.content)
            }
            .multilineTextAlignment(.center)
            .foregroundStyle(Color.foreground)
            .padding(.horizontal, 12)
            .padding(.vertical, 18)
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
        .background(Color.foreground.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
    private func answers() -> some View {
        LazyVGrid(columns: [
            GridItem(.flexible()),
            GridItem(.flexible())]
        ) {
            ForEach(question.answers, id:\.self) { answer in
                Button(action: { }) {
                    Text(answer)
                }
                .buttonStyle(AppButton())
            }
        }
    }
    
    var body: some View {
        VStack(spacing: 30) {
            card()
            answers()
        }
    }
}

#Preview {
    QuestionView(question: questions[0])
        .background(Color.background)
        .font(.appBody)
}
