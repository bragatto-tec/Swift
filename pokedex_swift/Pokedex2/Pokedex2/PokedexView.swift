
//
//  PokedexView.swift
//  foundation_pokedex
//
//  Created by Diego Saragoza Da Silva on 18/03/25.
//

import SwiftUI

struct PokedexView : View {
    // Binding
    var body : some View {
        Text("Pokedex")
    }
}

struct PokemonView: View {
    var body: some View {
        // NavigationView para permitir navegação
        NavigationView {
            // Lista para exibir cada Pokémon
            List(pokemons) { pokemon in
                // HStack para organizar o nome e os tipos do Pokémon
                HStack {
                    // Exibe o nome do Pokémon
                    Text(pokemon.name.capitalized)
                        .font(.headline)
                    Spacer()
                    // Exibe os tipos do Pokémon, convertidos em strings
                    Text(pokemon.types.map { $0.rawValue.capitalized }.joined(separator: ", "))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
            }
            .navigationTitle("Pokedex")
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView()
    }
}
