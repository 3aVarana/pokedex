//
//  PokemonListView.swift
//  Neo Pokedex
//
//  Created by Victor Arana on 7/5/22.
//

import SwiftUI

struct PokemonListView: View {
    @State var searchTerm: String = ""
    
    func showGenerationListPage() {

    }
    
    func showSortingListPage() {

    }
    
    func showFiltersPage() {
        
    }
    
    var body: some View {
        ScrollView {
            HStack(spacing: 25) {
                Spacer()
                TopHeaderButton(icon: "generation", action: showGenerationListPage)
                TopHeaderButton(icon: "sort", action: showSortingListPage)
                TopHeaderButton(icon: "filter", action: showFiltersPage)
            }
            .padding(.horizontal, 20)

            Text("Pokedéx")
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity,
                       maxHeight: 40,
                       alignment: .leading)
                .padding(.top, 37.5)
                .padding(.horizontal, 30)
                .padding(.bottom, 10)
            
            Text("Search for Pokémon by name or using the National Pokédex number.")
                .font(.body)
                .foregroundColor(Color("grayText"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 30)
            
            TextField(
                "What Pokémon are you looking for?",
                text: $searchTerm
            )
            .foregroundColor(Color("grayText"))
            .frame(maxWidth: .infinity, maxHeight: 40, alignment: .center)
            .padding(.vertical, 20.5)
            .multilineTextAlignment(.center)
            .background(
                Color("backgroundDefault")
                    .cornerRadius(10)
            )
            .padding(.horizontal, 30)
        }
    }
}

struct PokemonListView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonListView()
    }
}
