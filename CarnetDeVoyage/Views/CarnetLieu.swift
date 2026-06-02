//
//  CarnetLieu.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 02/06/2026.
//

import SwiftUI

struct CarnetLieu: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("La carte d'un lieu")
                    .font(.title)
                    .bold()
                
                CardView()
                
                VStack(spacing: 0) {
                    LinearGradient(colors: [.green, .cyan], startPoint: .leading, endPoint: .trailing)
                        .frame(height: 150)
                        .overlay(Image(systemName: "leaf.fill"))
                        .foregroundStyle(.white)
                        .bold()
                        .font(.largeTitle)
                    
                    Color.white.opacity(0.2)
                        .overlay(alignment: .bottomLeading) {
                            VStack(alignment: .leading) {
                                Text("Kyoto")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                                Label("Japon", systemImage: "map")
                                    .foregroundStyle(.secondary)
                                HStack(spacing: 2) {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star")
                                    
                                }
                                .foregroundStyle(.yellow)
                            }
                            .padding()
                        }

                }
                .frame(width: .infinity, height: 240)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                
                
                VStack(spacing: 0) {
                    LinearGradient(colors: [.blue, .cyan], startPoint: .leading, endPoint: .trailing)
                        .frame(height: 150)
                        .overlay(Image(systemName: "snow"))
                        .foregroundStyle(.white)
                        .bold()
                        .font(.largeTitle)
                    
                    Color.white.opacity(0.2)
                        .overlay(alignment: .bottomLeading) {
                            VStack(alignment: .leading) {
                                Text("Helsinki")
                                    .foregroundStyle(.white)
                                    .font(.title2)
                                    .bold()
                                Label("Finlande", systemImage: "map")
                                    .foregroundStyle(.secondary)
                                HStack(spacing: 2) {
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star.fill")
                                    Image(systemName: "star")
                                    Image(systemName: "star")
                                    
                                }
                                .foregroundStyle(.yellow)
                            }
                            .padding()
                        }
                }
                .frame(width: .infinity, height: 240)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
            }
            .padding()
        }
    }
}

#Preview {
    CarnetLieu()
}
