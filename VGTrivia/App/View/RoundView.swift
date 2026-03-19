//
//  RoundView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct RoundView: View {
  @Environment(ViewModel.self) var vm
  @Binding var navigationPath: NavigationPath

  @State private var exitAlert = false
  @State private var isMediaFullscreen = true

  func getRoundProgression() -> CGFloat {
    return CGFloat(vm.roundQuestions.count * (vm.index + 1))
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
                Text("Exit")
              ) { navigationPath.removeLast() },
              secondaryButton: .cancel(Text("Cancel"))
            )
          }
        Spacer()
        HStack(alignment: .bottom) {
          Text("Score : ")
          Text(vm.score.description)
            .font(.scoreBig)
            .offset(y: 1)
        }
        Spacer()
        HStack(alignment: .bottom) {
          Text("Question :")
          Text((vm.index + 1).description)
            .font(.scoreBig)
            .frame(width: 30)
            .offset(y: 1)
          Text("/ \(vm.roundQuestions.count)")
            .font(.score)
        }
      }
      progressBar()
    }
  }
  private func progressBar() -> some View {
    ZStack {
      Rectangle()
        .fill(.foreground.opacity(0.05))
        .clipShape(.rect(cornerRadius: 200))
      HStack(spacing: 0) {
        GeometryReader { p in
          Rectangle()
            .fill(Color.lavender)
            .frame(width: p.size.width * vm.progress)
            .clipShape(.rect(cornerRadius: 200))
            .animation(
              .bouncy(duration: 0.6, extraBounce: 0.2), value: vm.index)
          Rectangle()
            .fill(.foreground.opacity(0.05))
        }
      }
      .clipShape(.rect(cornerRadius: 200))
    }
    .frame(height: 10)
  }
  private func questionCard() -> some View {
    CardView {
      if let q = vm.currentQuestion {
        Text(q.title)
          .font(.appTitle)
        ShowMedia(media: q.media)
        Text(LocalizedStringKey(q.content))
          .font(.cardContent)
      } else {
        EmptyView()
      }
    }
  }
  private func explanationCard() -> some View {
    CardView {
      if let q = vm.currentQuestion {
        HStack {
          Image(
            systemName: vm.hasAnsweredCorrectly
              ? "checkmark.circle.fill" : "xmark.circle.fill")
          Text(vm.hasAnsweredCorrectly ? "You guessed it!" : "Wrong! The answer was")
        }
        .padding(.horizontal, 14)
        .padding(.vertical, 4)
        .foregroundStyle(Color.foreground)
        .font(.cardCallout)
        .background(vm.hasAnsweredCorrectly ? .minty : .peach)
        .clipShape(.capsule)
        Text(q.correctAnswer)
          .font(.appTitle)
        ShowMedia(media: q.explanationMedia)
        Text(LocalizedStringKey(q.explanation))
          .font(.cardContent)
      } else {
        EmptyView()
      }
    }
  }
  private func answerButtons() -> some View {
    VStack {
      LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 16) {
        ForEach(vm.currentQuestion?.answers ?? [], id: \.self) { answer in
          Button(action: {
            vm.hasAnswered ? nil : vm.checkAnswer(answer)
          }) {
            Text(answer)
          }
          .buttonStyle(
            TriviaButton(
              backgroundColor: vm.hasAnswered
                ? (vm.currentQuestion?.correctAnswer.lowercased() == answer.lowercased()
                  ? .minty : .peach) : .babyBlue)
          )
        }
      }
    }
  }
  private func nextButton() -> some View {
    VStack {
      if vm.hasAnswered {
        Button(action: {
          vm.isLastQuestion
            ? navigationPath.append(DestinationViews.result) : vm.nextQuestion()
        }) {
          Text(vm.isLastQuestion ? "See results" : "Go to next question!")
        }
        .buttonStyle(
          TriviaButton(backgroundColor: vm.isLastQuestion ? .butter : .babyBlue)
        )
      }
    }
    .frame(height: 70)
  }

  var body: some View {
    VStack(spacing: 24) {
      header()
      ZStack {
        if vm.hasAnswered {
          explanationCard()
            .transition(
              .asymmetric(
                insertion: .slide.combined(with: .opacity).combined(with: .scale(scale: 0)),
                removal: .push(from: .leading).animation(.easeInOut(duration: 0.9))
              ))
        } else {
          questionCard()
            .transition(
              .asymmetric(
                insertion: .push(from: .leading).animation(.easeInOut(duration: 1)),
                removal: .slide.combined(with: .opacity).combined(with: .scale(scale: 0))
              ))
        }
      }
      .animation(.easeInOut(duration: 0.3), value: vm.hasAnswered)
      answerButtons()
      nextButton()
    }
    .padding()
    .onAppear {
      vm.newRound()
    }
    .navigationBarBackButtonHidden()
    .background(Color.background)
  }
}

#Preview {
  RoundView(navigationPath: .constant(NavigationPath()))
    .environment(ViewModel())
    .font(.appBody)
}
