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
            ScrollView {
                VStack(alignment: .leading, spacing: 35) {
    
                    Text("Europe")
                        .font(.subheadline)
                        .bold()
    
                    ForEach (lieux.filter {$0.continent == .europe }) { lieu in
                        NavigationLink {
                            CarteLieuDetail(lieu: lieu)
                        } label: {
                            CardView(lieu: lieu)
                        }
                    }
                    
                    Text("Asie")
                        .font(.subheadline)
                        .bold()
                    
                    ForEach (lieux.filter {$0.continent == .asie }) { lieu in
                        NavigationLink {
                            CarteLieuDetail(lieu: lieu)
                        } label :  {
                            CardView(lieu: lieu)
                        }
                        .buttonStyle(.plain)
                    }
                }
                .foregroundStyle(.white)
            }
            .navigationTitle("Carte de lieux")
            .padding()
        }
    }
}


#Preview {
    CarteLieu()
}
