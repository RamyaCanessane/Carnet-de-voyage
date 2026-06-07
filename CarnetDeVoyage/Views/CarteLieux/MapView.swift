//
//  MapView.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 06/06/2026.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.4, longitudeDelta: 0.2)
        )
    }
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 37.983810, longitude: 23.727539))
}
 
