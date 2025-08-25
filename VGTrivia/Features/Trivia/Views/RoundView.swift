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
                .fill(.foreground.opacity(0.05))
                .cornerRadius(200)
            HStack(spacing:0) {
                GeometryReader { p in
                    Rectangle()
                        .fill(Color.lavender)
                        .frame(width: p.size.width / CGFloat(triviaViewModel.questionPool.count) * CGFloat(triviaViewModel.currentQuestion+1))
                        .cornerRadius(200)
                        .animation(.bouncy(duration: 0.6, extraBounce: 0.2), value: triviaViewModel.currentQuestion)
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
                .font(.cardContent)
                .padding(.horizontal, 20)
        }
    }
    private func explanationCard() -> some View {
        CardView {
            HStack {
                Image(systemName: triviaViewModel.hasAnsweredCorrectly ? "checkmark.circle.fill" : "xmark.circle.fill")
                Text(triviaViewModel.hasAnsweredCorrectly  ? "You guessed it!" : "Wrong! The answer was")
            }
            .padding(.horizontal, 14)
            .padding(.vertical, 4)
            .foregroundStyle(Color.foreground)
            .font(.cardCallout)
            .background(triviaViewModel.hasAnsweredCorrectly ? .minty : .peach)
            .clipShape(.capsule)
            Text(triviaViewModel.getQuestion()?.correctAnswer ?? "")
                .font(.questionTitle)
                .padding(.horizontal, 12)
            Text(triviaViewModel.getQuestion()?.explanation ?? "")
                .font(.cardContent)
                .padding(.horizontal, 20)
        }
    }
    private func answerButtons() -> some View {
        VStack(spacing: 25) {
            LazyVGrid(columns: [
                GridItem(.flexible()),
                GridItem(.flexible())], spacing: 10
            ) {
                ForEach(triviaViewModel.getQuestion()?.answers ?? [], id:\.self) { answer in
                    Button(action: {
                        triviaViewModel.hasAnswered ? nil : triviaViewModel.checkAnswer(answer)
                    }) {
                        Text(answer)
                    }
                    .buttonStyle(TriviaButton(
                        backgroundColor : triviaViewModel.hasAnswered ? (
                            triviaViewModel.getQuestion()?.correctAnswer .lowercased() == answer.lowercased() ? .minty : .peach
                        ) : .babyBlue)
                    )
                }
            }
            nextButton()
        }
    }
    private func nextButton() -> some View {
        VStack {
            if triviaViewModel.hasAnswered {
                Button(action: {
                    triviaViewModel.isLastQuestion() ? dismiss() : triviaViewModel.nextQuestion()
                }) {
                    Text(triviaViewModel.isLastQuestion() ? "End game" : "Go to next question!")
                }
                .buttonStyle(
                    TriviaButton(backgroundColor: triviaViewModel.isLastQuestion() ? .butter : .babyBlue)
                )
            }
        }
        .frame(height: 110)
        .clipped()
    }
    
    var body: some View {
        VStack(spacing:25) {
            header()
            progressBar()
            Spacer()
            ZStack {
                if triviaViewModel.hasAnswered {
                    explanationCard()
                        .transition(.asymmetric(
                            insertion: .slide.combined(with: .opacity).combined(with: .scale(scale: 0)),
                            removal: .push(from: .leading).animation(.easeInOut(duration: 0.9))
                        ))
                } else {
                    questionCard()
                        .transition(.asymmetric(
                            insertion: .push(from: .leading).animation(.easeInOut(duration: 1)),
                            removal: .slide.combined(with: .opacity).combined(with: .scale(scale: 0))
                        ))
                }
            }
            .animation(.easeInOut(duration: 0.3), value: triviaViewModel.hasAnswered)
            answerButtons()
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
