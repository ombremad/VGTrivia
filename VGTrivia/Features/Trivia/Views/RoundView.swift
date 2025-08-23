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
    private func progressBar() -> some View {
        ZStack {
            Rectangle()
                .fill(.charcoal)
            HStack(spacing:0) {
                GeometryReader { p in
                    Rectangle()
                        .fill(Color.lavender)
                        .frame(width: p.size.width / CGFloat(triviaViewModel.questionPool.count) * CGFloat(triviaViewModel.currentQuestion+1))
                    Spacer()
                }
            }
        }
        .frame(height: 10)
    }
    private func questionCard() -> some View {
        CardView {
            Text(triviaViewModel.getQuestion()?.title ?? "")
                .font(.questionTitle)
                .padding(.horizontal, 12)
            Text(triviaViewModel.getQuestion()?.content ?? "")
                .font(.questionContent)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
        }
    }
    private func explanationCard() -> some View {
        CardView {
            Text(triviaViewModel.getQuestion()?.correctAnswer ?? "")
                .font(.questionTitle)
                .padding(.horizontal, 12)
            Text(triviaViewModel.getQuestion()?.explanation ?? "")
                .font(.questionContent)
                .padding(.horizontal, 20)
                .padding(.bottom, 20)
        }
    }
    private func answerButtons() -> some View {
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
    private func nextButton() -> some View {
        Button(action: {
            triviaViewModel.isLastQuestion() ? dismiss() : triviaViewModel.nextQuestion()
        }) {
            Text(triviaViewModel.isLastQuestion() ? "End game" : "Go to next question!")
        }
        .buttonStyle(nextQuestionButton())
    }
    
    var body: some View {
        VStack(spacing:50) {
            header()
            progressBar()
            if triviaViewModel.hasAnswered {
                explanationCard()
                nextButton()
            } else {
                questionCard()
                answerButtons()
            }
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
