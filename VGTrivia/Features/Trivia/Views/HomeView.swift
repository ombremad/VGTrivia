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
            VStack(spacing: 20){
                NavigationLink(destination: RoundView().environment(triviaViewModel), label: {
                    Text("Start trivia!")
                })
                NavigationLink(destination: TestView().environment(triviaViewModel), label: {
                    Text("TestView()")
                })
            }
        }
    }
}

#Preview {
    HomeView().environment(TriviaViewModel())
        .background(Color.background)
        .font(.appBody)
}
