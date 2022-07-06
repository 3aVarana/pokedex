//
//  TopHeaderButton.swift
//  Neo Pokedex
//
//  Created by Victor Arana on 7/5/22.
//

import SwiftUI

struct TopHeaderButton: View {
    var icon: String
    var action: () -> Void
    var body: some View {
        Button(action: action, label: {
            Image(icon)
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(Color("blackText"))
        })
    }
}

struct TopHeaderButton_Previews: PreviewProvider {
    static var previews: some View {
        TopHeaderButton(icon: "generation", action: {})
    }
}
