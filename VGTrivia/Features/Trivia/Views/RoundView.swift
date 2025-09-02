//
//  RoundView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct RoundView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    @Binding var navigationPath: NavigationPath
    
    @State private var exitAlert = false
    
    func getRoundProgression() -> CGFloat {
        return CGFloat(triviaViewModel.questionPool.count * (triviaViewModel.currentQuestion + 1))
    }
    
    private func header() -> some View {
        VStack {
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
                            { navigationPath.removeLast() },
                            secondaryButton: .cancel(Text("Cancel"))
                        )
                    }
                Spacer()
                HStack(alignment: .bottom) {
                    Text("Score : ")
                    Text(triviaViewModel.score.description)
                        .font(.scoreBig)
                        .offset(y: 1)
                }
                .frame(width: 100)
                Spacer()
                HStack(alignment: .bottom) {
                    Text("Question :")
                    Text((triviaViewModel.currentQuestion+1).description)
                        .font(.scoreBig)
                        .frame(width: 30)
                        .offset(y: 1)
                    Text("/ \(triviaViewModel.questionPool.count)")
                        .font(.score)
                }
            }
            progressBar()
        }
        .padding(.top, 24)
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
                .font(.appTitle)
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
                .font(.appTitle)
                .padding(.horizontal, 12)
            Text(triviaViewModel.getQuestion()?.explanation ?? "")
                .font(.cardContent)
                .padding(.horizontal, 20)
        }
    }
    private func answerButtons() -> some View {
        VStack(spacing: 25) {
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 10) {
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
        }
    }
    private func nextButton() -> some View {
        VStack {
            if triviaViewModel.hasAnswered {
                Button(action: {
                    triviaViewModel.isLastQuestion() ? navigationPath.append(DestinationViews.result) : triviaViewModel.nextQuestion()
                }) {
                    Text(triviaViewModel.isLastQuestion() ? "See results" : "Go to next question!")
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
            Spacer()
            nextButton()
        }
        .padding()
        .onAppear {
            triviaViewModel.newRound()
            }
        .navigationBarBackButtonHidden()
        .background(Color.background)
    }
}

#Preview {
    RoundView(navigationPath: .constant(NavigationPath()))
        .environment(TriviaViewModel())
        .font(.appBody)
}
