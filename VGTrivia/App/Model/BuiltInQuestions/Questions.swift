//
//  Questions.swift
//  VGTrivia
//
//  Created by Anne Ferret on 22/08/2025.
//

/// # How to write new questions
///
/// Make a new pack of questions in a separate Swift file.
/// Take exemple from Questions+Series01.swift and Questions+Series02.swift.
/// Once a series of questions is ready, it will be added to the questions bank for the app, below.
///
/// quesiton id: "S02-Q001"
/// S02 goes for Question Series 02,
/// Q001 goes for Question Number 001.
///
/// You can use basic Markdown on questions' content and explanation. Ie. make some text **bold** !

enum QuestionBank {
  static let all: [Question] = series01 + series02

  static let baseAssetURL =
    "https://raw.githubusercontent.com/ombremad/VGTrivia/refs/heads/main/external_assets/"

  static func image(_ filename: String) -> DisplayMedia {
    DisplayMedia(type: .image, url: baseAssetURL + filename)
  }

  static func generateIds(_ questions: [Question], series: Int) -> [Question] {
    questions.enumerated().map { index, question in
      var q = question
      q.id = String(format: "S%02d-Q%03d", series, index + 1)
      return q
    }
  }
}
