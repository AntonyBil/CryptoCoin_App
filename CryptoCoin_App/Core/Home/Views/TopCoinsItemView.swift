//
//  TopCoinsItemView.swift
//  CryptoCoin_App
//
//  Created by apple on 20.07.2023.
//

import SwiftUI
import Kingfisher

struct TopCoinsItemView: View {
    let coin: Coin
    
    var body: some View {
        VStack(alignment: .leading) {
            //image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            //coinInfo
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text(coin.currentPrice.toCurrency())
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            //coin percent change
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 1)
            .shadow(radius: 1)
        )
    }
}

//struct TopCoinsItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopCoinsItemView(coin: )
//    }
//}
