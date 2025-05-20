//
//  ContentView.swift
//  LOTRConverter
//
//  Created by Júlio Andherson de Oliveira Silva on 19/05/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image(.background)
                .scaledToFit()
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                    .padding()
                Text("Hello, world!")
                    .bold()
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
