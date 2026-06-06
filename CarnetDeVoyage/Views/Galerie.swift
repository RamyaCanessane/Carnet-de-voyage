//
//  Galerie.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 03/06/2026.
//

import SwiftUI

struct Galerie: View {
    var columns = [
         GridItem(.flexible()),
         GridItem(.flexible()),
         GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            Image(.chine)
                .resizable()
                .scaledToFit()
            LazyVGrid(columns: columns) {
                ForEach(lieux) { lieu in
                    Image(lieu.image)
                        .resizable()
                        .scaledToFit()
                }
            }
            .navigationTitle("Galerie")
        }
    }
}

#Preview {
    Galerie()
}
