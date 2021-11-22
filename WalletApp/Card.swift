//
//  Card.swift
//  WalletApp
//
//  Created by Abdelrahman Elsayed on 11/21/21.
//

import SwiftUI

struct Card {
    let income: Int
    let expenses: Int
    var balance: Int {
        income - expenses
    }
    let cardNumber: String
    let imageName: String
    var isSelected = false
    var backgroundColor: Color {
        isSelected ? .purple : .yellow
    }
    var textColor: Color {
        isSelected ? .white : .black
    }
}
