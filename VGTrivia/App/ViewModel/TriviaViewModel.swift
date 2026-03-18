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
  var roundLength: Int = 5
  var index: Int = 0
  var score: Int = 0
  var hasAnswered: Bool = false
  var hasAnsweredCorrectly: Bool = false
  var isLastQuestion: Bool { index >= roundQuestions.count - 1 }
  var progress: Double {
    guard !roundQuestions.isEmpty else { return 0 }
    return Double(index + 1) / Double(roundQuestions.count)
  }

  // This generates an array with random questions.
  // Number of questions is defined for the round.
  // Answers are shuffled for every question unless preventShuffling is set in a question.
  func newRound() {
    resetRound()
    roundQuestions = QuestionBank.all
      .shuffled()
      .prefix(roundLength)
      .map { question in
        var presented = question
        if !question.preventShuffling {
          presented.answers = question.answers.shuffled()
        }
        return presented
      }
  }

  // Returns the current question to display.
  // If the question pool is empty, it safely returns nil to prevent crashes.
  func getQuestion() -> Question? {
    guard !roundQuestions.isEmpty else { return nil }
    return roundQuestions[index]
  }

  func checkAnswer(_ answer: String) {
    hasAnswered = true
    if answer == roundQuestions[index].correctAnswer {
      score += 1
      hasAnsweredCorrectly = true
    }
  }

  func nextQuestion() {
    if index < roundQuestions.count - 1 {
      index += 1
      hasAnswered = false
      hasAnsweredCorrectly = false
    }
  }

  // To trigger whenever we go back to home
  func resetRound() {
    roundQuestions = []
    index = 0
    hasAnswered = false
    hasAnsweredCorrectly = false
    score = 0
  }
}
