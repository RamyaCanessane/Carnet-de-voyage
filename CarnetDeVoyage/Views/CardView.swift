//
//  CardView.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 02/06/2026.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        VStack(spacing: 0) {
            
            ForEach(Carnet.lieux) { lieu in
                Image(lieu.image)
                    .resizable()
                    .frame(height: 150)
                    .scaledToFit()
                    .foregroundStyle(.white)
                    .bold()
                    .font(.largeTitle)
                    .overlay(alignment: .topTrailing) {
                        if lieu.isVisited == true {

                        Label("Visité", systemImage: "checkmark.circle.fill")
                            .padding(6)
                            .background(Capsule().fill(.green))
                            .bold()
                            .padding(.trailing, 8)
                            .padding(.top, 8)
                            .shadow(radius: 6)
                        }
                    }
                
                Color.white.opacity(0.2)
                    .overlay(alignment: .bottomLeading) {
                        VStack(alignment: .leading) {
                            Text(lieu.ville)
                                .foregroundStyle(.white)
                                .font(.title2)
                                .bold()
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
        }
        .frame(width: .infinity, height: 240)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    CardView()
}
