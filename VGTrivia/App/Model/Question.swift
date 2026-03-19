//
//  Question.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct Question: Identifiable {
  var id: String = ""
  let title: String
  let content: String
  var media: DisplayMedia? = nil
  var answers: [String]
  let correctAnswer: String
  let explanation: String
  var explanationMedia: DisplayMedia? = nil
  var preventShuffling: Bool = false
}
