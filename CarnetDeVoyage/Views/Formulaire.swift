//
//  Formulaire.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 04/06/2026.
//

import SwiftUI

struct PrimaireButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(.green, in: .capsule)
    }
}

struct Formulaire: View {
    @State var lieux: [Lieu]
    @State private var ajout = false
    @State private var ville = ""
    @State private var pays = ""
    @State private var isVisited: Bool = false
    @State private var isOn: Bool = false
    @State private var note: String = ""
    @State private var continent: Continent = .europe
    
    var body: some View {
        Form {
            TextField("Ville", text: $ville)
            TextField("Pays", text: $pays)
            TextField("Note", text: $note)
            Picker("Continent", selection: $continent) {
                ForEach(Continent.allCases, id: \.self) { continent in
                    Text(continent.rawValue)
                }
            }
            .pickerStyle(.inline)
            Toggle("Déjà visité", isOn: $isVisited)
            
            Button("Ajouter") {
                lieux.append(Lieu(image: "", ville: ville, pays: pays, note: Int(note) ?? 0, isVisited: isVisited, continent: continent))
            }
            .disabled(ville.isEmpty)
            .buttonStyle(PrimaireButtonStyle())
        }
        
    }
}

#Preview {
    Formulaire(lieux: Carnet.lieux)
}
