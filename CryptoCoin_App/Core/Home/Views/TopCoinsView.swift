//
//  TopCoinsView.swift
//  CryptoCoin_App
//
//  Created by apple on 20.07.2023.
//

import SwiftUI

struct TopCoinsView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Top Coins")
                .font(.headline)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0..<5, id: \.self) { _ in
                        TopCoinsItemView()
                    }
                }
            }
        }
        .padding()
    }
}

struct TopCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        TopCoinsView()
    }
}
