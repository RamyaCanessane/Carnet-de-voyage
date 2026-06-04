//
//  MyCarteDeLieu.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 02/06/2026.
//

import SwiftUI

struct ListeLieu: View {
    @State var lieux: [Lieu]
    @State private var ajout = false
    
    var body: some View {
        NavigationStack {
            
            HStack {
                Image(systemName: "checkmark.circle.fill")
                    .foregroundStyle(.green)
                Spacer()
                Text("Swipper")
                Spacer()
                Image(systemName: "trash")
                    .foregroundStyle(.red)

            }
            .padding()

            List {
                ForEach($lieux) { $lieu in
                    HStack {
                        Image(lieu.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                        VStack(alignment: .leading) {
                            Text(lieu.pays)
                                .bold()
                            Text(lieu.ville)
                                .foregroundStyle(.secondary)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .overlay(alignment: .topTrailing) {
                        if lieu.isVisited == true {
                            Image(systemName: "checkmark.circle.fill")
                                .padding(6)
                                .font(.title2)
                                .bold()
                                .padding(.trailing, 8)
                                .padding(.top, 8)
                                .shadow(radius: 6)
                                .foregroundStyle(.green)
                        }
                    }
                    .swipeActions(edge: .leading) {
                        Button {
                            lieu.isVisited.toggle()
                        } label: {
                            Label("Visité", systemImage: "checkmark")
                        }
                        .tint(.green)
                    }
                }
                .onDelete { indexSet in
                    lieux.remove(atOffsets: indexSet)
                    print(lieux)
                }
            }
            .navigationTitle("Liste de lieux")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Ajouter") { ajout = true }
                        .sheet(isPresented: $ajout) {
                            Formulaire(lieux: lieux)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    ListeLieu(lieux: Carnet.lieux)
}
