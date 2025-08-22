//
//  RoundView.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct RoundView: View {
    @Environment(TriviaViewModel.self) var triviaViewModel
    
    var body: some View {
        ScrollView {
            Text("Test")
                .onAppear {
                    triviaViewModel.newRound(numberOfQuestions: 2)
                }
        }
    }
}

#Preview {
    RoundView().environment(TriviaViewModel())
}
