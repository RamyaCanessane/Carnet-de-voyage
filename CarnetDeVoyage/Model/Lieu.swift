//
//  Lieu.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 03/06/2026.
//

import Foundation
import MapKit

struct Lieu: Identifiable {
    var id = UUID()
    let image: String
    let ville: String
    var pays: String
    var note: Int
    var isVisited: Bool
    var continent: Continent
    var coordinates: CLLocationCoordinate2D
}

var chine = Lieu(image: "chine", ville: "Hong Kong", pays: "Chine", note: 4, isVisited: false, continent: .asie, coordinates: CLLocationCoordinate2D(latitude: 22.302711, longitude: 114.177216))
var grece = Lieu(image: "athenes", ville: "Athènes", pays: "Grèce", note: 5, isVisited: false, continent: .europe, coordinates: CLLocationCoordinate2D(latitude: 37.983810, longitude: 23.727539))
var espagne = Lieu(image: "espagne", ville: "Barcelone", pays: "Esapagne", note: 4, isVisited: false, continent: .europe, coordinates: CLLocationCoordinate2D(latitude: 41.390205, longitude: 2.154007))
var japon = Lieu(image: "japon", ville: "Tokyo", pays: "Japon", note: 4, isVisited: false, continent: .asie, coordinates: CLLocationCoordinate2D(latitude: 35.652832, longitude: 139.839478))
var finlande = Lieu(image: "finlande", ville: "Helsinki", pays: "Finlande", note: 3, isVisited: false, continent: .europe, coordinates: CLLocationCoordinate2D(latitude: 60.192059, longitude: 24.945831))
var portugal =  Lieu(image: "portugal", ville: "Lisbonne", pays: "Portugal", note: 4, isVisited: false, continent: .europe, coordinates: CLLocationCoordinate2D(latitude: 38.736946, longitude: -9.142685))
var inde = Lieu(image: "inde", ville: "New-Dehli", pays: "Inde", note: 4, isVisited: false, continent: .asie, coordinates: CLLocationCoordinate2D(latitude: 28.644800, longitude: 77.216721))
var vietnam = Lieu(image: "vietnam", ville: "Hanoi", pays: "Vietnam", note: 5, isVisited: false, continent: .asie, coordinates: CLLocationCoordinate2D(latitude: 21.028511, longitude: 105.804817))
var turquie = Lieu(image: "turquie", ville: "Ankara", pays: "Turquie", note: 3, isVisited: false, continent: .asie, coordinates: CLLocationCoordinate2D(latitude: 39.925533, longitude: 32.866287))

var lieux = [chine, grece, espagne, japon, finlande, portugal, inde, vietnam, turquie]

enum Continent: String, CaseIterable {
    case europe = "Europe"
    case afrique = "Afrique"
    case asie = "Asie"
    case amerique = "Amérique"
    case oceanie = "Océanie"
}





