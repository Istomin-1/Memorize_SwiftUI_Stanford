//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Mikhail on 19.06.2021.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    private static let emojis = ["🚜", "🛴", "🚆", "🏎", "🚇", "🚛", "⛵️", "🚖", "🛩", "🛳", "🚁", "🛶"]
    
    private static func createMemoryGame() -> MemoryGame<String> {
        MemoryGame<String>(numberOfPairsOfCards: 10) { pairIndex in emojis[pairIndex] }
    }
    
    @Published private var model = createMemoryGame()
    
    var cards: [Card] {
        return model.cards
    }
    
//    MARK: - Intent(s)
    
    func choose(_ card: Card) {
        model.choose(card)
    }
}
