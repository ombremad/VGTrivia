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
    
    private func numberOfQuestions() -> some View {
        VStack(spacing: 20) {
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
        }
    }
    private func otherSettings() -> some View {
        VStack(spacing: 20) {
            Text("Other settings")
                .font(.appTitle)
            Text("(To be implemented soon-ish)")
        }
    }
    private func startButton() -> some View {
        Button(action: {
            navigationPath.append(DestinationViews.round)
        }) {
            Text("Start game")
        }
        .buttonStyle(TriviaButton())
    }
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(spacing: 50) {
                numberOfQuestions()
                otherSettings()
                startButton()
            }
            .padding(.horizontal)
            .onAppear {
                triviaViewModel.resetRound()
            }
            .navigationDestination(for: DestinationViews.self) { destination in
                switch destination {
                    case .round:
                        RoundView(navigationPath: $navigationPath)
                            .environment(triviaViewModel)
                        case .result: ResultView(navigationPath: $navigationPath).environment(triviaViewModel)
                }
            }
        }
    }
}

#Preview {
    HomeView().environment(TriviaViewModel())
        .background(Color.background)
        .font(.appBody)
}
