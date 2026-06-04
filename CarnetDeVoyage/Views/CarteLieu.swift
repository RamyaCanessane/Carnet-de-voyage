//
//  CarteLieu.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 02/06/2026.
//

import SwiftUI

struct CarteLieu: View {

    var body: some View {
        NavigationStack {
            List {
                Section("Europe") {
                    ForEach (Carnet.lieux.filter {$0.continent == .europe }) { lieu in
                        CardView()
                    }
                }
                .foregroundStyle(.white)
                
                Section("Asie") {
                    ForEach (Carnet.lieux.filter {$0.continent == .asie }) { lieu in
                        CardView()
                    }
                }
                .foregroundStyle(.white)
            }
            .navigationTitle("Carte de lieux")
            .listStyle(.plain)
        }
    }
}

#Preview {
    CarteLieu()
}
