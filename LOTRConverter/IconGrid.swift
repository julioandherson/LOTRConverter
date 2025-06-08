//
//  IconGrid.swift
//  LOTRConverter
//
//  Created by Júlio Andherson de Oliveira Silva on 31/05/25.
//

import SwiftUI

struct IconGrid: View {
    @State var selectedCurrency: Currency

    var body: some View {
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
            ForEach(Currency.allCases) { currency in
                if self.selectedCurrency == currency {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.selectedCurrency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    IconGrid(selectedCurrency: .copperPenny)
}
