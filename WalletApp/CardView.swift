//
//  CardView.swift
//  WalletApp
//
//  Created by Abdelrahman Elsayed on 11/22/21.
//

import SwiftUI

struct CardView: View {
    let card: Card
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Image(card.imageName)
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            .padding(.horizontal, 5)
            .padding(.top, 5)
            Spacer()
            Text("$\(card.balance)")
                .foregroundColor(card.textColor)
                .fontWeight(.bold)
            Text(card.cardNumber)
                .foregroundColor(card.textColor)
                .font(.callout)
        }
        .padding(.vertical, 10)
        .frame(width: 130, height: 170)
        .background(card.backgroundColor)
        .cornerRadius(10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(Wallet())
    }
}
