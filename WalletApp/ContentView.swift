//
//  ContentView.swift
//  WalletApp
//
//  Created by Abdelrahman Elsayed on 11/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 40) {
                Header()
                CardListView()
                BalanceView()
                Spacer()
            }
            .padding(25)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Wallet())
    }
}
