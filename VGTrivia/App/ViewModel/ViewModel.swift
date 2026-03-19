//
//  ViewModel.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

@Observable
class ViewModel {
  var appData = AppData(
    answeredHistory: [],
  )

  var roundQuestions: [Question] = []
  var roundLength: Int = 5
  var currentQuestion: Question? {
    guard !roundQuestions.isEmpty, roundQuestions.indices.contains(index) else { return nil }
    return roundQuestions[index]
  }
  var index: Int = 0
  var score: Int = 0
  var hasAnswered: Bool = false
  var hasAnsweredCorrectly: Bool = false
  var isLastQuestion: Bool { index >= roundQuestions.count - 1 }
  var progress: Double {
    guard !roundQuestions.isEmpty else { return 0 }
    return Double(index) / Double(roundQuestions.count)
  }
  var hasAnsweredEveryQuestion: Bool { appData.answeredHistory.count == QuestionBank.all.count }
}
