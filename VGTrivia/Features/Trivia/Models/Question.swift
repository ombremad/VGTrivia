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
    let answers: [String]
    let correctAnswer: Int
    let preventShuffling: Bool
    
    init(title: String, content: String, answers: [String], correctAnswer: Int, preventShuffling: Bool) {
        self.title = title
        self.content = content
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.preventShuffling = preventShuffling
    }
    
    // Unless otherwise noted, questions should always be shuffled.
    convenience init(title: String, content: String, answers: [String], correctAnswer: Int) {
        self.init(
            title: title,
            content: content,
            answers: answers,
            correctAnswer: correctAnswer,
            preventShuffling: false
        )
    }
    
    // Unless otherwise noted, the correct answer is always the first one.
    convenience init(title: String, content: String, answers: [String], preventShuffling: Bool) {
        self.init(
            title: title,
            content: content,
            answers: answers,
            correctAnswer: 1,
            preventShuffling: preventShuffling
        )
    }

    // Combines both previous convenience inits (correctAnswer = 1 and preventShuffling = false)
    convenience init(title: String, content: String, answers: [String]) {
        self.init(
            title: title,
            content: content,
            answers: answers,
            correctAnswer: 1,
            preventShuffling: false
        )
    }
}
