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
//            ZStack() {
                LinearGradient(colors: [.orange, .pink], startPoint: .leading, endPoint: .trailing)
                    .frame(height: 150)
                    .overlay(Image(systemName: "sun.max.fill"))
                    .foregroundStyle(.white)
                    .bold()
                    .font(.largeTitle)
                    .overlay(alignment: .topTrailing) {
                        Label("Visité", systemImage: "checkmark.circle.fill")
                            .padding(6)
                            .background(Capsule().fill(.green))
                            .bold()
                            .padding(.trailing, 8)
                            .padding(.top, 8)
                            .shadow(radius: 6)
                    }
//            }
            
            Color.white.opacity(0.2)
                .overlay(alignment: .bottomLeading) {
                    VStack(alignment: .leading) {
                        Text("Lisbonne")
                            .foregroundStyle(.white)
                            .font(.title2)
                            .bold()
                        Label("Portugal", systemImage: "map")
                            .foregroundStyle(.secondary)
                        HStack(spacing: 2) {
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")
                            Image(systemName: "star.fill")

                        }
                        .foregroundStyle(.yellow)
                    }
                    .padding()
                }

            
        }
        .frame(width: .infinity, height: 240)
        .clipShape(RoundedRectangle(cornerRadius: 20))
    }
}

#Preview {
    CardView()
}
