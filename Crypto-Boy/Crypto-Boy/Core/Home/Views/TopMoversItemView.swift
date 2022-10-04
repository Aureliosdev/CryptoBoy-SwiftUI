//
//  TopMoversItemView.swift
//  Crypto-Boy
//
//  Created by Aurelio Le Clarke on 03.10.2022.
//

import SwiftUI

struct TopMoversItemView: View {
    var body: some View {
        VStack(alignment: .leading) {
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.yellow)
                .padding(.bottom,8)
            //coin info
            HStack(spacing: 2) {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$19.565")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            //coin percent change
            Text("+ 5,62%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray),lineWidth: 1))
    }
}

struct TopMoversItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversItemView()
    }
}
