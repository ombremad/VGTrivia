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
    
    private func bigTitle() -> some View {
        HStack {
            Image(systemName: "gamecontroller")
            Text("VGTrivia")
                .font(.appBigTitle)
        }
        .foregroundStyle(.charcoal)
        .padding(.vertical)
        .padding(.horizontal, 30)
        .background(
            RadialGradient(colors:[.babyBlue, .peach], center: .center, startRadius: 0, endRadius: 150)
        )
        .clipShape(.capsule)
        .shadow(radius: 3)
    }
    private func numberOfQuestions() -> some View {
        CardView {
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
    }
    
    var body: some View {
        NavigationStack(path: $navigationPath) {
            VStack(spacing: 50) {
                Spacer()
                bigTitle()
                numberOfQuestions()
                Spacer()
                startButton()
            }
            .padding()
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
            .background(Color.background)
        }
    }
}

#Preview {
    HomeView()
        .environment(TriviaViewModel())
        .font(.appBody)
}
