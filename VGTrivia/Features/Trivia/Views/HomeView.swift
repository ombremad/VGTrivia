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
            HStack {
                Image(systemName: "gamecontroller.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 40)
                Text("VGTrivia")
            }
        }
        .buttonStyle(BigTitleButton())
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
        .frame(height: 110)
        .clipped()
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
                        RoundView(navigationPath: $navigationPath).environment(triviaViewModel)
                    case .result:
                        ResultView(navigationPath: $navigationPath).environment(triviaViewModel)
                    case .easterEgg:
                        EasterEggView(navigationPath: $navigationPath).environment(triviaViewModel)
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
