//
//  ExchangeInfo.swift
//  LOTRConverter
//
//  Created by Júlio Andherson de Oliveira Silva on 24/05/25.
//

import SwiftUI

struct ExchangeInfo: View {
    var body: some View {
        ZStack {
            //Background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack {
                //Tittle text
                Text("Exchange Rates")
                    .font(.largeTitle)
                    .tracking(3)
                
                //Description text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                
                //Exchange Rates
                HStack {
                    // Left image
                    Image(.goldpiece)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                    
                    // Exchange
                    Text("1 Gold Piece = 4 Gold Pennies")
                    
                    // Right image
                    Image(.goldpenny)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 33)
                }
                
                // Done Button
                Button("Done") {
                    
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .font(.largeTitle)
                .padding()
            }
        }
    }
}

#Preview {
    ExchangeInfo()
}
