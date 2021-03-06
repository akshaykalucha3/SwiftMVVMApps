//
//  Guess.swift
//  SwiftUI-MVVM
//
//  Created by Akshay Kalucha on 24/02/22.
//

import SwiftUI

struct Guess {
    let index: Int
    var word = "     "
    var bgColors = [Color](repeating: .wrong, count: 5)
    var cardFlipped = [Bool](repeating: false, count: 5)
    var guessLetters: [String] {
        word.map { String($0) }
    }
    
    // 🟨⬛🟩⬛🟨
    
    var reesults: String {
        let tryColor: [Color: String] = [.misplaced: "🟨", .wrong: "⬛", .correct: "🟩"]
        return bgColors.compactMap {tryColor[$0]}.joined(separator: "")
    }
}
