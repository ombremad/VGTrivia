//
//  Question.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

import SwiftUI

class Question {
    let title: String
    let content: String
    var answers: [String]
    let correctAnswer: String
    let preventShuffling: Bool
    
    init(title: String, content: String, answers: [String], correctAnswer: String, preventShuffling: Bool) {
        self.title = title
        self.content = content
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.preventShuffling = preventShuffling
    }
    
    // Unless otherwise noted, questions should always be shuffled.
    convenience init(title: String, content: String, answers: [String], correctAnswer: String) {
        self.init(
            title: title,
            content: content,
            answers: answers,
            correctAnswer: correctAnswer,
            preventShuffling: false
        )
    }
}
