//
//  RoundView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct RoundView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    @Environment(\.dismiss) private var dismiss
    
    @State private var exitAlert = false
    var roundLength: Int
    
    private func header() -> some View {
        HStack(alignment: .bottom) {
            Text("Exit")
                .clipShape(.rect)
                .onTapGesture {
                    exitAlert = true
                }
                .alert(isPresented: $exitAlert) {
                    Alert(
                        title: Text("Exit game?"),
                        message: Text("Your progress will be lost."),
                        primaryButton: .destructive(
                            Text("Exit"))
                        { dismiss() },
                        secondaryButton: .cancel(Text("Cancel"))
                          )
                }
            Spacer()
            HStack(alignment: .bottom) {
                Text("Score : ")
                Text(triviaViewModel.score.description)
                    .font(.scoreBig)
            }
            Spacer()
            HStack(alignment: .bottom) {
                Text("Question :")
                Text((triviaViewModel.currentQuestion+1).description)
                    .font(.scoreBig)
                Text("/ \(triviaViewModel.questionPool.count)")
                    .font(.score)
            }
        }
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
                    triviaViewModel.checkAnswer(answer)
                }) {
                    Text(answer)
                }
                .buttonStyle(AnswerButton())
            }
        }
    }
    
    var body: some View {
        VStack(spacing:50) {
            header()
            card()
            answers()
        }
        .padding()
        .onAppear {
                triviaViewModel.newRound(numberOfQuestions: roundLength)
            }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    RoundView(roundLength:5).environment(TriviaViewModel())
        .background(Color.background)
        .font(.appBody)
}
