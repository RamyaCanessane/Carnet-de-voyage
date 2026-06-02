//
//  MyCarteDeLieu.swift
//  CarnetDeVoyage
//
//  Created by Canessane Ramya on 02/06/2026.
//

import SwiftUI

struct MyCarteDeLieu: View {
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Image(.grèce)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
//                        .clipped()
                        .clipShape(Circle())
                        .shadow(radius: 5)
                    VStack {
                        Text("Grèce")
                            .bold()
                        Text("Archipèle de Santorin")
                    }

                }
                HStack {
                    Image(.chine)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .shadow(radius: 5)
                    Text("Chine")
                        .bold()

                }
                HStack {
                    Image(.espagne)
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 100, height: 100)
                        .shadow(radius: 5)
                    Text("Espagne")
                        .bold()

                }
            }
            .navigationTitle("Carte de lieu")
        }
    }
}

#Preview {
    MyCarteDeLieu()
}
