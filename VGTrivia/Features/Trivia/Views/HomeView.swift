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
                ForEach(Array(stride(from: 5, to: 31, by: 5)), id: \.self) { index in
                    NavigationLink(destination: RoundView(roundLength:index).environment(triviaViewModel), label: {
                        Text("Start trivia with \(index) questions!")
                    })
                }
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
