//
//  HomeView.swift
//  CryptoCoin_App
//
//  Created by apple on 20.07.2023.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                //top movers view
                TopCoinsView(viewModel: viewModel)
                
                Divider()
                    
                //all coins view
                AllCoinsView(viewModel: viewModel)
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
