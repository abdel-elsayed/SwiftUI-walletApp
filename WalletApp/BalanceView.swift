//
//  BalanceView.swift
//  WalletApp
//
//  Created by Abdelrahman Elsayed on 11/26/21.
//

import SwiftUI

struct BalanceView: View {
    @EnvironmentObject var wallet: Wallet
    @State private var incomePercentage = 0
    var headerView: some View {
        HStack {
            Text("Balance")
                .font(.title2)
                .fontWeight(.bold)
            Spacer()
            Text("$\(wallet.selectedCard.balance)")
                .font(.title)
                .fontWeight(.semibold)
                .foregroundColor(.primaryPurple)
                .padding(.trailing)
        }.onAppear() {
            update()
        }
        .onChange(of: wallet.selectedCard) { newValue in
            update()
        }
    }
    
    var inView: some View {
        HStack(spacing: 7) {
            Image(systemName: "arrow.down")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(.primaryPurple)
                .padding(10)
                .cornerRadius(10)
            VStack(alignment: .leading) {
                Text("In")
                    .font(.headline)
                    .foregroundColor(.primaryPurple .opacity(0.7))
                Text("$\(wallet.selectedCard.income)")
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }
    }
    
    var outView: some View {
        HStack(spacing: 7) {
            Image(systemName: "arrow.up")
                .resizable()
                .frame(width: 25, height: 25)
                .foregroundColor(.primaryYellow)
                .padding(10)
                .cornerRadius(20)
            VStack(alignment: .leading) {
                Text("Out")
                    .font(.headline)
                    .foregroundColor(.primaryPurple .opacity(0.7))
                Text("$\(wallet.selectedCard.expenses)")
                    .font(.title2)
                    .fontWeight(.bold)
            }
        }
    }
    
    var body: some View {
        VStack{
            headerView
            HorizontalProgressView(percentage: $incomePercentage)
            Spacer()
            HStack {
                inView
                Spacer()
                outView
            }.padding(5)
            Spacer()
        }
    }
    
    
    
    private func update() {
        withAnimation(.spring(response: 2)){
            incomePercentage = wallet.selectedCard.incomePercentage
        }
    }
}

struct BalanceView_Previews: PreviewProvider {
    static var previews: some View {
        BalanceView()
            .environmentObject(Wallet())
            .fixedSize(horizontal: false, vertical: true)
    }
}
