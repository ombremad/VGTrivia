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
    
    var body: some View {
        VStack(spacing: 25) {
            Spacer()
            VStack(spacing: 10) {
                Text("Final score")
                    .font(.appTitle)
                Text("\(triviaViewModel.score.description) / \(triviaViewModel.questionPool.count)")
                    .font(.scoreBig)
            }
            Text("You did great!")
            Spacer()
            Button(action: {
                navigationPath = NavigationPath()
            }) {
                Text("End game")
            }
            .buttonStyle(TriviaButton(backgroundColor: .butter))
        }
        .padding()
        .navigationBarBackButtonHidden()
        .background(Color.background)
    }
}

#Preview {
    ResultView(navigationPath: .constant(NavigationPath()))
        .environment(TriviaViewModel())
        .font(.appBody)
}
