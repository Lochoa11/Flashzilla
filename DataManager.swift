//
//  DataManager.swift
//  Flashzilla
//
//  Created by Lin Ochoa on 2/25/25.
//

import Foundation

struct DataManager {
    static let savePath = URL.documentsDirectory.appending(path: "SavedData")
    
    static func load() -> [Card] {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode([Card].self, from: data) {
                return decoded
            }
        }
        return []
    }
    
    static func save(_ cards: [Card]) {
        if let data = try? JSONEncoder().encode(cards) {
            try? data.write(to: savePath, options: [.atomic, .completeFileProtection])
        }
    }
}
