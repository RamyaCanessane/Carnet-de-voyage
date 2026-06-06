//
//  CardView.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 02/06/2026.
//

import SwiftUI

struct CardView: View {
    let lieu: Lieu

    var body: some View {
        VStack(spacing: 0) {

            Image(lieu.image)
                .resizable()
                .scaledToFill()
                .frame(height: 150)
                .clipped()
                .overlay(alignment: .topTrailing) {

                    if lieu.isVisited {
                        Label("Visité", systemImage: "checkmark.circle.fill")
                            .padding(6)
                            .background(Capsule().fill(.green))
                            .bold()
                            .padding(.top, 8)
                            .padding(.trailing, 8)
                            .shadow(radius: 6)
                    }
                }

            Color.white.opacity(0.2)
                .frame(height: 90)
                .overlay(alignment: .leading) {

                    VStack(alignment: .leading, spacing: 4) {

                        Text(lieu.ville)
                            .font(.title2)
                            .bold()
                            .foregroundStyle(.white)

                        Label(lieu.pays, systemImage: "map")
                            .foregroundStyle(.secondary)

                        HStack(spacing: 3) {
                            ForEach(1...5, id: \.self) { note in
                                Image(systemName: note <= lieu.note ? "star.fill" : "star")
                            }
                        }
                        .foregroundStyle(.yellow)
                    }
                    .padding()
                }
        }
        .frame(maxWidth: .infinity)
        .frame(height: 240)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    CardView(lieu: portugal)
}
