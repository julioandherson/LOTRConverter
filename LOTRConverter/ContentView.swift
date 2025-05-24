//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Júlio Andherson de Oliveira Silva on 19/05/25.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    var body: some View {
        ZStack {
            //Background
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                //Poney Image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                // Currency Exchange Text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                HStack {
                    // Section Convertion
                    
                    // Left Side
                    VStack {
                        
                        // Coin type
                        HStack {
                            // Image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            // Text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        
                        // Convertion Input
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                            
                        
                    
                    }
                    
                    // =
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    
                    
                    // Right Side
                    VStack {
                        
                        // Coin type
                        HStack {
                            // Image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            // Text
                            // Text
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        
                        // Convertion Input
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                    
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                // Info button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                        print("info: \(showExchangeInfo)")
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfo()
                    }
                }
            }
//            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
