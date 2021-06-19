//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Mikhail on 18.06.2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
