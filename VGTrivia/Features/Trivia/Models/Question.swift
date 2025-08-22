//
//  Question.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct Question: Identifiable {
    let id = UUID()
    let title: String
    let content: LocalizedStringKey
    var answers: [String]
    let correctAnswer: String
    let explanation: LocalizedStringKey
    let preventShuffling: Bool
    
    init(title: String, content: LocalizedStringKey, answers: [String], correctAnswer: String, explanation: LocalizedStringKey, preventShuffling: Bool) {
        self.title = title
        self.content = content
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.explanation = explanation
        self.preventShuffling = preventShuffling
    }
    
    // Unless otherwise noted, questions should always be shuffled.
    init(title: String, content: LocalizedStringKey, answers: [String], correctAnswer: String, explanation: LocalizedStringKey) {
        self.title = title
        self.content = content
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.explanation = explanation
        self.preventShuffling = false
    }
}
