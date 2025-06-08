//
//  ExchangeRate.swift
//  LOTRConverter
//
//  Created by Júlio Andherson de Oliveira Silva on 24/05/25.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let exchangeText: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            // Left image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange
            Text(exchangeText)
            
            // Right image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .silverpenny, exchangeText: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
