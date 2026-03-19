//
//  AppDataTransactions.swift
//  VGTrivia
//
//  Created by Anne Ferret on 19/03/2026.
//

extension ViewModel {
  func save() {
    try? Storage.save(appData)
  }

  func load() {
    if let loaded = try? Storage.load() {
      appData = loaded
    }
  }
}
