//
//  RoundView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct RoundView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    
    private func score() -> some View {
        HStack {
            Text("Score : \(triviaViewModel.score)")
            Spacer()
            Text("Question : \(triviaViewModel.currentQuestion+1) / \(triviaViewModel.questionPool.count)")
        }
        .font(.appBody)
    }
    private func card() -> some View {
        VStack(spacing:16) {
            RainbowStack()
            Spacer()
            Text(triviaViewModel.getQuestion()?.title ?? "")
                .font(.questionTitle)
                .padding(.horizontal, 12)
            Text(triviaViewModel.getQuestion()?.content ?? "")
                .font(.questionContent)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
            Spacer()
        }
        .multilineTextAlignment(.center)
        .foregroundStyle(Color.foreground)
        .background(Color.foreground.opacity(0.05))
        .clipShape(RoundedRectangle(cornerRadius: 20))
        .frame(height: 300)
    }
    private func answers() -> some View {
        LazyVGrid(columns: [
            GridItem(.flexible()),
            GridItem(.flexible())], spacing: 20
        ) {
            ForEach(triviaViewModel.getQuestion()?.answers ?? [], id:\.self) { answer in
                Button(action: {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.50) {
                        triviaViewModel.checkAnswer(answer)
                    }
                }) {
                    Text(answer)
                }
                .buttonStyle(AnswerButton())
            }
        }
    }
    
    var body: some View {
        VStack(spacing:50) {
            score()
            card()
            answers()
        }
        .padding()
        .onAppear {
                triviaViewModel.newRound(numberOfQuestions: 3)
            }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    RoundView().environment(TriviaViewModel())
}
