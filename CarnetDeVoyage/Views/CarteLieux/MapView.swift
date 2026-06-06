//
//  MapView.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 06/06/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map {
            ForEach(lieux) { lieu in
                Marker(lieu.ville, coordinate: lieu.coordinates)
                    .tint(.orange)
            }
        }
    }
}

#Preview {
    MapView()
}
