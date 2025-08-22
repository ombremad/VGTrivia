//
//  Questions.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

let questions: [Question] = [
    Question(
        title: "Mario",
        content: "What's the official last name of famous Nintendo's character, **Mario**?",
        answers: ["Mario", "Giamatti", "Letsago", "Toadstool"],
        correctAnswer: "Mario"
    ),
    Question(
        title: "Rock is Sponge",
        content: "This **1999 rhythm game** features a monkey playing maracas, wearing cliché Latin-American attire.",
        answers: ["Super Monkey Ball", "Samba de Amigo", "Donkey Konga", "Pop'n Music"],
        correctAnswer: "Samba de Amigo"
    ),
    Question(
        title: "Blue blur",
        content: "Which year saw the release of the very first **Sonic the Hedgehog** game by SEGA?",
        answers: ["1991", "1992", "1993", "1994"],
        correctAnswer: "1991",
        preventShuffling: true
    ),
]
