//
//  CarteLieuDetail.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 06/06/2026.
//

import SwiftUI
import MapKit

struct CarteLieuDetail: View {
    let lieu: Lieu
    var body: some View {
        ScrollView {
                MapView(coordinate: lieu.coordinates)
                .frame(width: 410, height: 300)
                
                Image(lieu.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 3)
                    }
                    .shadow(color: .gray, radius: 12)
                    .padding(.top, -120)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(lieu.ville)
                        .font(.title)
                    Spacer()
                    Text("\(lieu.note)")
                        .font(.title2)
                    Text("\(Image(systemName: "star.fill"))")
                        .foregroundStyle(.yellow)
                }
                
                Label(lieu.pays, systemImage: "map")
                    .foregroundStyle(.secondary)
                Divider()
                    .overlay(.white)
                    .padding()
                Text("Présentation")
                    .font(.title2)
                    Spacer()
                Text(lieu.description)
            }
            .padding()

        }
        .navigationTitle(lieu.ville)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CarteLieuDetail(lieu: chine)
}
