//
//  PokemonRowView.swift
//  Neo Pokedex
//
//  Created by Victor Arana on 7/5/22.
//

import SwiftUI

struct PokemonRowView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5.0) {
                Text("#001")
                    .font(.title3)
                    .bold()
                Text("Bulbasaur")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color("textInvertedColor"))
                HStack {
                    Text("Grass")
                    Text("Poison")
                }
            }
            .padding(.leading, 20)
            Spacer()
            Image("001")
                .resizable()
                .scaledToFit()
                .frame(width: 130, height: 130)
                .padding(.trailing, 10.0)
                .offset(x: 0.0, y: -20.0)
        }
        .frame(maxWidth: .infinity, maxHeight: 115, alignment: .center)
        .background(.green)
        .cornerRadius(10.0)
        .padding(.horizontal, 20)
    }
}

struct PokemonRowView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonRowView()
    }
}
