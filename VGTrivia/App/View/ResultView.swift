//
//  ResultView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 29/08/2025.
//

import SwiftUI

struct ResultView: View {
  @Environment(ViewModel.self) var vm
  @Binding var navigationPath: NavigationPath
  @State var scoreVisible: Bool = false
  @State var commentVisible: Bool = false

  private func finalScore() -> some View {
    VStack(spacing: 10) {
      Text("Final score")
        .font(.appTitle)
      Text("\(vm.score.description) / \(vm.roundQuestions.count)")
        .font(.scoreBig)
    }
  }
  private func finalComment() -> some View {
    VStack(spacing: 24) {
      if vm.roundQuestions.count != 0 {
        switch Double(vm.score) / Double(vm.roundQuestions.count) {
        case 0..<0.3:
          Text("💩")
            .font(.emojiBig)
          Text("Don't beat yourself up about it, this game was intended to be quite hard.")
          Text("I hope you still managed to learn some fun facts along the way!")
        case 0.3..<0.6:
          Text("✊")
            .font(.emojiBig)
          Text(
            "You seem to have a bit of knowledge going on, but not quite enough to really call yourself a VG trivia pro!"
          )
          Text("It's a tough game, you can already be quite proud of yourself.")
        case 0.6..<1:
          Text("👾")
            .font(.emojiBig)
          Text(
            "Wow! You were born with a gamepad in your hands, obviously. Or a keyboard. Or an arcade stick. Or was it a Game Boy?"
          )
          Text(
            "Either way, you can pat yourself on the back. Your video games knowledge is impressive!"
          )
        case 1:
          Text("🏆")
            .font(.emojiBig)
          Text("YOU'RE WINNER!")
            .font(.appBigTitle)
          Text(
            "Your knowledge is flawless! You nailed a perfect score, so I'm going to assume that you got that reference, too."
          )
        default:
          Text("Error.")
        }
      }
    }
    .padding(.horizontal, 32)
    .multilineTextAlignment(.center)
  }
  private func endButton() -> some View {
    Button(action: {
      navigationPath = NavigationPath()
    }) {
      Text("End game")
    }
    .buttonStyle(TriviaButton(backgroundColor: .butter))
    .frame(height: 60)
  }

  var body: some View {
    VStack(spacing: 24) {
      Spacer()
      if scoreVisible {
        finalScore()
          .transition(.move(edge: .trailing).combined(with: .opacity))
      }
      if commentVisible {
        finalComment()
          .transition(.move(edge: .trailing).combined(with: .opacity))
      }
      Spacer()
      endButton()
    }
    .onAppear {
      withAnimation(.bouncy(duration: 0.5, extraBounce: 0.25).delay(0.25)) {
        scoreVisible = true
      }
      withAnimation(.bouncy(duration: 0.5, extraBounce: 0.25).delay(1.5)) {
        commentVisible = true
      }
    }
    .padding()
    .navigationBarBackButtonHidden()
  }
}

#Preview {
  ResultView(navigationPath: .constant(NavigationPath()))
    .environment(ViewModel())
    .font(.appBody)
}
