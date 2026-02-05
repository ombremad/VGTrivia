//
//  TriviaViewModel.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

@Observable
class TriviaViewModel {
    var questionPool: [Question] = []
    var currentQuestion: Int = 0
    var hasAnswered: Bool = false
    var hasAnsweredCorrectly: Bool = false
    var score: Int = 0
    var roundLength: Int = 5
        
    // This generates an array with random questions.
    // Number of questions is defined for the round.
    // Answers are shuffled for every question unless preventShuffling is set in a question.
    func newRound() {
        let numberOfQuestions = roundLength
        resetRound()
        questionPool = Array(
            questions.shuffled().prefix(numberOfQuestions).map { question in
            var q = question
            if !q.preventShuffling {
                q.answers = q.answers.shuffled()
            }
            return q
        })
    }
        
    // Returns the current question to display.
    // If the question pool is empty, it safely returns nil to prevent crashes.
    func getQuestion() -> Question? {
        guard !questionPool.isEmpty else { return nil }
        return questionPool[currentQuestion]
    }
        
    func checkAnswer(_ answer: String) {
        hasAnswered = true
        if answer == questionPool[currentQuestion].correctAnswer {
            score += 1
            hasAnsweredCorrectly = true
        }
    }
    
    func nextQuestion() {
        if currentQuestion < questionPool.count - 1 {
            currentQuestion += 1
            hasAnswered = false
            hasAnsweredCorrectly = false
        }
    }
    
    // To trigger whenever we go back to home 
    func resetRound() {
        questionPool = []
        currentQuestion = 0
        hasAnswered = false
        hasAnsweredCorrectly = false
        score = 0
        roundLength = 5
    }
    
    func isLastQuestion() -> Bool {
        if currentQuestion < questionPool.count - 1 {
            return false
        } else {
            return true
        }
    }
}
