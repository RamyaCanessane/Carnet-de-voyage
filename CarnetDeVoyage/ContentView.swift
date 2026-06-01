//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "moon.stars.fill")
                .font(.title)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Ramya Canessane")
                .font(.largeTitle)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
