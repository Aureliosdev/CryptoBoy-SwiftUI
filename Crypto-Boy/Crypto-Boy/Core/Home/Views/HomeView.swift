//
//  HomeView.swift
//  Crypto-Boy
//
//  Created by Aurelio Le Clarke on 03.10.2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                //top movers view
                
    
                TopMoversView()
                
                Divider()
                //all coins view
                AllCoinsView()
            }
            .navigationTitle("Live prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
