//
//  CoinRowView.swift
//  Crypto-Boy
//
//  Created by Aurelio Le Clarke on 03.10.2022.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack {
           //market cap rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.yellow)
                
            //coin name info
            VStack(alignment: .leading, spacing: 4) {
                Text("Bitcoin")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("BTC")
                    .font(.caption)
                    .padding(.leading,6)
                
            }
            .padding(.leading,2)
            
            Spacer()
            
            //coin price
            VStack(alignment: .trailing, spacing: 4) {
                Text("$20,332.22")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)
                
                Text("+2.1%")
                    .font(.caption)
                    .padding(.leading,6)
                    .foregroundColor(.green)
                
            }
            .padding(.leading,2)
        }
   
        .padding(.horizontal)
        .padding(.vertical,4)
    }
}
struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}
