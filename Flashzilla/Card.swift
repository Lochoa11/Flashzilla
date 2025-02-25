//
//  Card.swift
//  Flashzilla
//
//  Created by Lin Ochoa on 2/23/25.
//

import Foundation

struct Card: Codable, Equatable, Hashable, Identifiable {
    var id = UUID()
    var prompt: String
    var answer: String
    
    static let example = Card(prompt: "Who played the 13th Doctor in Doctor Who?", answer: "Jodie Whittaker")
}
