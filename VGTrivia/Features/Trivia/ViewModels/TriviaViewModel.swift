//
//  TriviaViewModel.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

@Observable
class TriviaViewModel {
    var roundQuestions: [Question] = []
    var currentQuestion: Int = 0
    var score: Int = 0
    
    func resetRound() {
        roundQuestions = []
        currentQuestion = 0
        score = 0
    }
    
    func newRound(numberOfQuestions: Int) {
        resetRound()
        roundQuestions = Array(questions.shuffled().prefix(numberOfQuestions))
    }
    
    func newQuestion() {
        currentQuestion += 1
    }
        
    func getQuestion() -> Question {
        let question = roundQuestions[currentQuestion - 1]
        if !question.preventShuffling {
            question.answers = question.answers.shuffled()
        }
        return question
    }
}
