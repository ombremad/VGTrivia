//
//  HomeView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    @State var navigationPath = NavigationPath()
    @State var easterEggCount: Int = 0
    
    private func bigTitle() -> some View {
        Button(action: {
            if easterEggCount > 3 {
                navigationPath.append(DestinationViews.easterEgg)
            } else {
                easterEggCount += 1
            }
        }) {
            VStack {
                Image(.titleIcon)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 100)
                Text("VGTrivia")
            }
        }
        .buttonStyle(BigTitleButton())
    }
    private func numberOfQuestions() -> some View {
        CardView {
            VStack(spacing: 24) {
                Text("Number of questions")
                    .font(.appTitle)
                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
                    ForEach(Array(stride(from: 5, to: 31, by: 5)), id: \.self) { index in
                        Button(action: {
                            triviaViewModel.roundLength = index
                        }) {
                            Text(index.description)
                        }
                        .buttonStyle(TriviaButton(backgroundColor: triviaViewModel.roundLength == index ? .babyBlue : .pearl))
                    }
                }
                Text("Currently, the game has a pool of **\(questions.count)** total different questions.")
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
    }
    private func startButton() -> some View {
        Button(action: {
            navigationPath.append(DestinationViews.round)
        }) {
            Text("Start game")
        }
        .buttonStyle(TriviaButton())
        .frame(height: 60)
    }

    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(spacing: 42) {
                bigTitle()
                numberOfQuestions()
                startButton()
            }
            .padding()
            .background(Color.background)
            .onAppear {
                easterEggCount = 0
                triviaViewModel.resetRound()
            }
            .navigationDestination(for: DestinationViews.self) { destination in
                switch destination {
                    case .round:
                        RoundView(navigationPath: $navigationPath).environment(triviaViewModel)
                    case .result:
                        ResultView(navigationPath: $navigationPath).environment(triviaViewModel)
                    case .easterEgg:
                        EasterEggView(navigationPath: $navigationPath).environment(triviaViewModel)
                }
            }
        }
    }
}

#Preview {
    HomeView()
        .environment(TriviaViewModel())
        .font(.appBody)
}
