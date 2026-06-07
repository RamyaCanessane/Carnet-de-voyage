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
    var description: String
}

var chine = Lieu(
    image: "chine",
    ville: "Hong Kong",
    pays: "Chine",
    note: 4,
    isVisited: false,
    continent: .asie,
    coordinates: CLLocationCoordinate2D(latitude: 22.302711, longitude: 114.177216),
    description: """
    Hong Kong est une métropole dynamique située sur la côte sud de la Chine. Réputée pour sa skyline spectaculaire, son port animé et ses quartiers commerçants, elle combine influences 
    orientales et occidentales. La ville offre également de nombreux espaces naturels et panoramas exceptionnels.
    
    """
)

var grece = Lieu(
    image: "athenes",
    ville: "Athènes",
    pays: "Grèce",
    note: 5,
    isVisited: false,
    continent: .europe,
    coordinates: CLLocationCoordinate2D(latitude: 37.983810, longitude: 23.727539),
    description: """
        Athènes est la capitale de la Grèce et l'une des plus anciennes villes du monde. Berceau de la démocratie et de la philosophie occidentale, elle abrite des monuments emblématiques 
        comme l'Acropole et le Parthénon. Son mélange d'histoire antique et de vie urbaine moderne en fait une destination fascinante.
        """)

var espagne = Lieu(
    image: "espagne",
    ville: "Barcelone",
    pays: "Esapagne",
    note: 4,
    isVisited: false,
    continent: .europe,
    coordinates: CLLocationCoordinate2D(latitude: 41.390205, longitude: 2.154007),
    description: """
        Barcelone est une ville côtière située en Catalogne, en Espagne. Elle est connue pour l'architecture unique d'Antoni Gaudí, notamment la Sagrada Família. Entre plages, culture, 
        gastronomie et ambiance méditerranéenne, Barcelone attire des visiteurs du monde entier.
        """)

var japon = Lieu(
    image: "japon",
    ville: "Tokyo",
    pays: "Japon",
    note: 4,
    isVisited: false,
    continent: .asie,
    coordinates: CLLocationCoordinate2D(latitude: 35.652832, longitude: 139.839478),
    description: """
        Tokyo est la capitale du Japon et l'une des plus grandes métropoles du monde. Elle est célèbre pour ses gratte-ciel, sa technologie de pointe, sa gastronomie et ses quartiers 
        emblématiques. Malgré son dynamisme, la ville conserve de nombreux temples et traditions ancestrales.
        """)

var finlande = Lieu(
    image: "finlande",
    ville: "Helsinki",
    pays: "Finlande",
    note: 3,
    isVisited: false,
    continent: .europe,
    coordinates: CLLocationCoordinate2D(latitude: 60.192059, longitude: 24.945831),
    description: """
        Helsinki est la capitale de la Finlande, située au bord de la mer Baltique. Réputée pour son architecture nordique, son design innovant et sa qualité de vie, elle offre un cadre 
        paisible entre nature et urbanisme. Ses nombreux parcs et îles contribuent à son charme unique.
        """)

var portugal =  Lieu(
    image: "portugal",
    ville: "Lisbonne",
    pays: "Portugal",
    note: 4,
    isVisited: false,
    continent: .europe,
    coordinates: CLLocationCoordinate2D(latitude: 38.736946, longitude: -9.142685),
    description: """
        Lisbonne est la capitale du Portugal et l'une des plus anciennes villes d'Europe. Construite sur plusieurs collines surplombant le Tage, elle séduit par ses ruelles pittoresques, 
        ses tramways historiques et ses façades colorées. Son atmosphère chaleureuse en fait une destination très appréciée.
        """)

var inde = Lieu(
    image: "inde",
    ville: "New-Dehli",
    pays: "Inde",
    note: 4,
    isVisited: false,
    continent: .asie,
    coordinates: CLLocationCoordinate2D(latitude: 28.644800, longitude: 77.216721),
    description: """
        New Delhi est la capitale de l'Inde et le cœur politique du pays. Connue pour ses monuments historiques, ses marchés animés et sa diversité culturelle, elle témoigne de plusieurs 
        siècles d'histoire. La ville mêle traditions ancestrales et développement moderne.
        """)

var vietnam = Lieu(
    image: "vietnam",
    ville: "Hanoi",
    pays: "Vietnam",
    note: 5,
    isVisited: false,
    continent: .asie,
    coordinates: CLLocationCoordinate2D(latitude: 21.028511, longitude: 105.804817),
    description: """
        Hanoï est la capitale du Vietnam et un important centre culturel du pays. Son vieux quartier, ses lacs paisibles et son patrimoine architectural témoignent de son histoire riche et 
        variée. La ville est également réputée pour sa cuisine traditionnelle et son ambiance authentique.
        """)

var turquie = Lieu(
    image: "turquie",
    ville: "Ankara",
    pays: "Turquie",
    note: 3,
    isVisited: false,
    continent: .asie,
    coordinates: CLLocationCoordinate2D(latitude: 39.925533, longitude: 32.866287),
    description: """
        Ankara est la capitale de la Turquie et le centre administratif du pays. Bien que moins connue que Istanbul, elle possède une riche histoire et accueille de nombreux musées, 
        institutions et monuments nationaux. Son développement moderne reflète l'évolution de la Turquie contemporaine.
        """)

var lieux = [chine, grece, espagne, japon, finlande, portugal, inde, vietnam, turquie]

enum Continent: String, CaseIterable {
    case europe = "Europe"
    case afrique = "Afrique"
    case asie = "Asie"
    case amerique = "Amérique"
    case oceanie = "Océanie"
}





