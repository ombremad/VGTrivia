//
//  Trivia.swift
//  VGTrivia
//
//  Created by Anne Ferret on 19/03/2026.
//

extension ViewModel {
  // This generates an array with random questions.
  // Number of questions is defined for the round.
  // Answers are shuffled for every question unless preventShuffling is set in a question.
  func newRound() {
    resetRound()
    if hasAnsweredEveryQuestion {
      appData.answeredHistory.removeAll()
      save()
    }
    roundQuestions = QuestionBank.all
      .filter { !appData.answeredHistory.contains($0.id) }
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

  func checkAnswer(_ answer: String) {
    guard let question = currentQuestion else { return }
    hasAnswered = true
    appData.answeredHistory.append(question.id)
    save()
    if answer == question.correctAnswer {
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
