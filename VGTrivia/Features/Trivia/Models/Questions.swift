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
        correctAnswer: "Mario",
    ),
    Question(
        title: "Shake it",
        content: "This **1999 rhythm game** features a monkey playing maracas, wearing cliché Latin-American attire...",
        answers: ["Super Monkey Ball", "Samba de Amigo", "Donkey Konga", "Pop'n Music"],
        correctAnswer: "Samba de Amigo",
    ),
    Question(
        title: "Blue blur",
        content: "Which year saw the release of the very first **Sonic the Hedgehog** game by SEGA?",
        answers: ["1991", "1992", "1993", "1994"],
        correctAnswer: "1991",
        preventShuffling: true,
    ),
    Question(
        title: "Urgh",
        content: "He used (without permission) a music from **Sonic the Hedgehog (2006)** for a commercial...",
        answers: ["Donald Trump", "Jair Bolsonaro", "Vladimir Putin", "Javier Milei"],
        correctAnswer: "Jair Bolsonaro",
    ),
    Question(
        title: "Strawberries!",
        content: "2D platformer **Celeste (2018)** actually started as a tiny game jam project for the following platform...",
        answers: ["PICO-8", "Game Boy Color", "NES", "Intellivision Amico"],
        correctAnswer: "PICO-8",
    ),
    Question(
        title: "Earworm",
        content: "This studio used to start their games with a resounding **\"Challenge everything\"**...",
        answers: ["EA", "Activision", "SEGA", "Blizzard"],
        correctAnswer: "EA",
    ),
    Question(
        title: "The Wall",
        content: "This game was wildly marketed as a **\"Soviet Game\"** in the West during the late 1980s...",
        answers: ["Tetris", "Missile Command", "Populous", "Castle Wolfenstein"],
        correctAnswer: "Tetris",
    ),
    Question(
        title: "Beep boop",
        content: "Which popular music software is still used nowadays to create tunes on the original **Game Boy**?",
        answers: ["LSDj", "MilkyTracker", "Ableton Live", "Virtual DJ"],
        correctAnswer: "LSDj",
    ),
    Question(
        title: "Iconic is the word",
        content: "This guy is responsible for the original **Super Mario Bros. (1985)** music themes...",
        answers: ["Koji Kondo", "Nobuo Uematsu", "Yuzo Koshiro", "Hirokazu Tanaka"],
        correctAnswer: "Koji Kondo",
    ),
    Question(
        title: "Still Alive",
        content: "🎵 This was a triumph. I'm making a note here... 🎵",
        answers: ["HUGE SUCCESS.", "S.O.S.", "MORNING DRESS.", "WHAT A MESS."],
        correctAnswer: "HUGE SUCCESS.",
    ),
    Question(
        title: "The more, the merrier",
        content: "This was the first popular home video game console to come with 4 controller ports, instead of (usually) 2...",
        answers: ["Nintendo 64", "PlayStation", "Xbox", "Dreamcast"],
        correctAnswer: "Nintendo 64",
    ),
]
