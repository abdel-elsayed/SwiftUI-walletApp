//
//  CardListView.swift
//  WalletApp
//
//  Created by Abdelrahman Elsayed on 11/21/21.
//

import SwiftUI

struct CardListView: View {
    @EnvironmentObject var wallet: Wallet
    
    var headerView: some View {
        HStack {
            Text("Your cards")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Button("Add new") {}
            .font(.callout)
            .foregroundColor(.primaryPurple)
            .padding(.trailing)
        }
        
    }
    
    var body: some View {
        VStack {
            headerView
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {
                    ForEach(wallet.cards.indices, id: \.self){ index in
                        CardView(card: wallet.cards[index]).onTapGesture {
                            wallet.cards.indices.forEach { index in
                                wallet.cards[index].isSelected = false
                            }
                            wallet.cards[index].isSelected.toggle()
                    }
                    }
                }
            }
//            Spacer()
        }
    }
}

struct CardListView_Previews: PreviewProvider {
    static var previews: some View {
        CardListView()
            .environmentObject(Wallet())
    }
}
