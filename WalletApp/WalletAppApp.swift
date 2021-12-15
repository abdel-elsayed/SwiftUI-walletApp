//
//  WalletAppApp.swift
//  WalletApp
//
//  Created by Abdelrahman Elsayed on 11/21/21.
//

import SwiftUI

@main
struct WalletAppApp: App {
    @StateObject private var wallet = Wallet()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(wallet)
        }
    }
}

final class Wallet: ObservableObject {
    @Published var cards = cardsData
    
    var selectedCard: Card {
        cards.first(where: {$0.isSelected}) ?? Card(income: 2345, expenses: 543, cardNumber: "**** 3424", imageName: "american-express")
    }
}
