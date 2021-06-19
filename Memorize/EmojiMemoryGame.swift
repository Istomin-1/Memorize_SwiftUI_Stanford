//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mikhail on 19.06.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    static let emojis = ["🚜", "🛴", "🚆", "🏎", "🚇", "🚛", "⛵️", "🚖", "🛩", "🛳", "🚁", "🛶"]
    
    static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 4) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    var cards: [MemoryGame<String>.Card] {
        return model.cards
    }
    
//    MARK: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
}
