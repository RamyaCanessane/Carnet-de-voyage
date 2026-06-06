//
//  CarteLieuDetail.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 06/06/2026.
//

import SwiftUI

struct CarteLieuDetail: View {
    let lieu: Lieu
    var body: some View {
        ScrollView {
            MapView()
                .frame(height: 300)
            
            Image(lieu.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay {
                    Circle().stroke(.white, lineWidth: 3)
                }
                .shadow(color: .gray, radius: 12)
                .offset(y: -130)
                
            Text(lieu.ville)
            Text(lieu.pays)
        }
    }
}

#Preview {
    CarteLieuDetail(lieu: grece)
}
