//
//  HomeView.swift
//  CryptoCoin_App
//
//  Created by apple on 20.07.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                //top movers view
                TopCoinsView()
                
                Divider()
                    
                //all coins view
                AllCoinsView()
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
