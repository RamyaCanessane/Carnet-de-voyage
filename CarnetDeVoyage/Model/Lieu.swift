//
//  Lieu.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 03/06/2026.
//

import Foundation

struct Lieu: Identifiable {
    var id = UUID()
    let image: String
    let ville: String
    var pays: String
    var note: Int
    var isVisited: Bool
    var continent: Continent
}

struct Carnet {
    static var lieux = [
        chine,
        grece,
        espagne,
        japon,
        finlande,
        portugal,
        inde,
        vietnam,
        turquie
    ]
    static var chine = Lieu(image: "chine", ville: "Hong Kong", pays: "Chine", note: 4, isVisited: false, continent: .asie)
    static var grece = Lieu(image: "grèce", ville: "Athènes", pays: "Grèce", note: 5, isVisited: false, continent: .europe)
    static var espagne = Lieu(image: "espagne", ville: "Barcelone", pays: "Esapagne", note: 4, isVisited: false, continent: .europe)
    static var japon = Lieu(image: "japon", ville: "Tokyo", pays: "Japon", note: 4, isVisited: false, continent: .asie)
    static var finlande = Lieu(image: "finlande", ville: "Helsinki", pays: "Finlande", note: 3, isVisited: false, continent: .europe)
    static var portugal =  Lieu(image: "portugal", ville: "Lisbonne", pays: "Portugal", note: 4, isVisited: false, continent: .europe)
    static var inde = Lieu(image: "inde", ville: "New-Dehli", pays: "Inde", note: 4, isVisited: false, continent: .asie)
    static var vietnam = Lieu(image: "vietnam", ville: "Hanoi", pays: "Vietnam", note: 5, isVisited: false, continent: .asie)
    static var turquie = Lieu(image: "turquie", ville: "Ankara", pays: "Turquie", note: 3, isVisited: false, continent: .asie)
}

enum Continent: String, CaseIterable {
    case europe = "Europe"
    case afrique = "Afrique"
    case asie = "Asie"
    case amerique = "Amérique"
    case oceanie = "Océanie"
}





