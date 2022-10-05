//
//  AllCoinsView.swift
//  Crypto-Boy
//
//  Created by Aurelio Le Clarke on 03.10.2022.
//

import SwiftUI

struct AllCoinsView: View {
    @StateObject var viewModel:  HomeViewModel
    var body: some View {
        VStack(alignment: .leading) {
            Text("All coins")
                .font(.headline)
                .padding()
            HStack {
                Text("Coins")
                
                Spacer()
                
                Text("Price")
                
            }.padding(.horizontal)
                .font(.caption)
                .foregroundColor(.gray)
            ScrollView {
                VStack {
                    ForEach(viewModel.coins ) { coin in
                        CoinRowView(coin: coin)
                    }
                }
            }
        }
        
    }
}

//struct AllCoinsView_Previews: PreviewProvider {
//    static var previews: some View {
//        AllCoinsView()
//    }
//}
