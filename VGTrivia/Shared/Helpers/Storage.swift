//
//  Storage.swift
//  VGTrivia
//
//  Created by Anne Ferret on 19/03/2026.
//

import Foundation

struct Storage {
  static let fileURL: URL = {
    let docs = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    return docs.appendingPathComponent("data.json")
  }()

  static func save(_ data: AppData) throws {
    let encoded = try JSONEncoder().encode(data)
    try encoded.write(to: fileURL, options: .atomic)
  }

  static func load() throws -> AppData {
    let raw = try Data(contentsOf: fileURL)
    return try JSONDecoder().decode(AppData.self, from: raw)
  }
}
