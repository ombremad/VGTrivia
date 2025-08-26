//
//  HomeView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50) {
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
                VStack(spacing: 20) {
                    Text("Other settings")
                        .font(.appTitle)
                    Text("(To be implemented soon-ish)")
                }
                NavigationLink (destination:RoundView()) {
                    Text("Start game")
                        .font(.appTitle)
                }
            }
            .padding(.horizontal)
            .onAppear {
                triviaViewModel.resetRound()
            }
        }
    }
}

#Preview {
    HomeView().environment(TriviaViewModel())
        .background(Color.background)
        .font(.appBody)
}
