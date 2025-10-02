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
    let media: DisplayMedia?
    var answers: [String]
    let correctAnswer: String
    let explanation: LocalizedStringKey
    let explanationMedia: DisplayMedia?
    let preventShuffling: Bool
    
    init(
        title: String,
        content: LocalizedStringKey,
        media: DisplayMedia? = nil,
        answers: [String],
        correctAnswer: String,
        explanation: LocalizedStringKey,
        explanationMedia: DisplayMedia? = nil,
        preventShuffling: Bool = false
        )
    {
        self.title = title
        self.content = content
        self.media = media
        self.answers = answers
        self.correctAnswer = correctAnswer
        self.explanation = explanation
        self.explanationMedia = explanationMedia
        self.preventShuffling = preventShuffling
    }
}
