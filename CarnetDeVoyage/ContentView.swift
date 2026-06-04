//
//  ContentView.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 01/06/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            CarteLieu()
            .ignoresSafeArea()
            .tabItem {
                Label("Carte de lieux", systemImage: "map")}
            ListeLieu(lieux: Carnet.lieux)
                .tabItem {
                    Label("Liste", systemImage: "list.bullet")
                }
            Galerie()
                .tabItem {
                    Label("Galerie", systemImage: "photo")
                }
        }
    }
}

#Preview {
    ContentView()
}
