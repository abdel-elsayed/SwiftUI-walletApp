//
//  Header.swift
//  WalletApp
//
//  Created by Abdelrahman Elsayed on 11/21/21.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 1.0) {
                Text("Good Morning")
                    .foregroundColor(.gray)
                    .font(.custom("callout", size: 20))
                Text("Abdel Elsayed")
                    .font(.title)
                    .fontWeight(.bold)
            }
            Spacer()
            Image("me")
                .resizable()
                .frame(width: 70, height: 70)
        }
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
