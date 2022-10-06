//
//  CoinRowView.swift
//  Crypto-Boy
//
//  Created by Aurelio Le Clarke on 03.10.2022.
//

import SwiftUI
import Kingfisher

struct CoinRowView: View {
  
    let coin: Coin
    
    var body: some View {
        HStack {
           //market cap rank
            Text("\(coin.marketCapRank ?? 1)")
                .font(.caption)
                .foregroundColor(.gray)
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.yellow)
                
            //coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text(coin.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .padding(.leading,6)
                
            }
            .padding(.leading,2)
            
            Spacer()
            
            //coin price
            VStack(alignment: .trailing, spacing: 4) {
                Text(coin.currentPrice.toCurrency())
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text(coin.priceChangePercentage24H.toPercent())
                    .font(.caption)
                    .padding(.leading,6)
                    .foregroundColor(coin.priceChangePercentage24H > 0 ? .green :  .red)
                
            }
            .padding(.leading,2)
        }
   
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}
//struct CoinRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        CoinRowView()
//    }
//}
