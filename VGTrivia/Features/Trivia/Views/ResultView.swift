//
//  ResultView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 29/08/2025.
//

import SwiftUI

struct ResultView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    @Binding var navigationPath: NavigationPath
    @State var scoreOffset: CGFloat = 500
    @State var commentOffset: CGFloat = 500
    
    private func finalScore() -> some View {
        VStack(spacing: 10) {
            Text("Final score")
                .font(.appTitle)
            Text("\(triviaViewModel.score.description) / \(triviaViewModel.questionPool.count)")
                .font(.scoreBig)
        }
        .offset(x: scoreOffset)
    }
    private func finalComment() -> some View {
        VStack(spacing:10) {
            if triviaViewModel.score != 0 && triviaViewModel.questionPool.count != 0 {
                switch Double(triviaViewModel.score) / Double(triviaViewModel.questionPool.count) {
                    case 0..<0.3:
                        Text("💩")
                            .font(.emojiBig)
                        Text("Don't beat yourself up about it, this game was intended to be quite hard.")
                        Text("I hope you still managed to learn some fun facts along the way!")
                    case 0.3..<0.6:
                        Text("✊")
                            .font(.emojiBig)
                        Text("You seem to have a bit of knowledge going on, but not quite enough to really call yourself a VG trivia pro!")
                        Text("It's a tough game, you can already be quite proud of yourself.")
                    case 0.6..<1:
                        Text("👾")
                            .font(.emojiBig)
                        Text("Wow! You were born with a gamepad in your hands, obviously. Or a keyboard. Or an arcade stick. Or was it a Game Boy?")
                        Text("Either way, you can pat yourself on the back. Your video games knowledge is impressive!")
                    case 1:
                        Text("🏆")
                            .font(.emojiBig)
                        Text("YOU'RE WINNER!")
                            .font(.appBigTitle)
                        Text("Your knowledge is flawless! You nailed a perfect score, so I'm going to assume that you got that reference, too.")
                    default:
                        Text("Error.")
                }
            }
        }
        .offset(x: commentOffset)
        .padding(.horizontal, 32)
        .multilineTextAlignment(.center)
    }
    private func endGame() -> some View {
        Button(action: {
            navigationPath = NavigationPath()
        }) {
            Text("End game")
        }
        .buttonStyle(TriviaButton(backgroundColor: .butter))
    }
    
    var body: some View {
        VStack(spacing: 25) {
            Spacer()
            finalScore()
            finalComment()
            Spacer()
            endGame()
        }
        .padding()
        .navigationBarBackButtonHidden()
        .background(Color.background)
        .onAppear {
            scoreOffset = 500
            commentOffset = 500
            withAnimation(.bouncy(duration: 0.5, extraBounce: 0.25).delay(0.25)) {
                scoreOffset = 0
            }
            withAnimation(.bouncy(duration: 0.5, extraBounce: 0.25).delay(1.5)) {
                commentOffset = 0
            }
        }
    }
}

#Preview {
    ResultView(navigationPath: .constant(NavigationPath()))
        .environment(TriviaViewModel())
        .font(.appBody)
}
