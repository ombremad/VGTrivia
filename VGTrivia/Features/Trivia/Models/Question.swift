//
//  Question.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

struct Question {
    let title: String
    let content: LocalizedStringKey
    var answers: [String]
    let correctAnswer: String
    let preventShuffling: Bool
    
    init(title: String, content: LocalizedStringKey, answers: [String], correctAnswer: String, preventShuffling: Bool) {
        self.title = title
        self.content = content
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.preventShuffling = preventShuffling
    }
    
    // Unless otherwise noted, questions should always be shuffled.
    init(title: String, content: LocalizedStringKey, answers: [String], correctAnswer: String) {
        self.title = title
        self.content = content
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.preventShuffling = false
    }
}
