//
//  StatisticsView.swift
//  foundation_pokedex
//
//  Created by Diego Saragoza Da Silva on 18/03/25.
//

import SwiftUI

struct PokemonTypeCounter: View {
    // Função para contar quantos Pokémon existem de cada tipo
    func countPokemonsByType() -> [ElementType: Int] {
        var typeCounts: [ElementType: Int] = [:]

        //todos os Pokémon
        for pokemon in pokemons {
            //tipos de cada Pokémon
            for type in pokemon.types {
                // Incrementa o contador para o tipo atual
                typeCounts[type] = (typeCounts[type] ?? 0) + 1
            }
        }

        return typeCounts
    }
    var body: some View {
        NavigationView {
            List {
                //tipos e suas contagens, a função retorna um dicionário, onde as chaves são os tipos de Pokémon e os valores são as contagens de quantos Pokémon possuem esse tipo. // O dicionário é ordenado alfabeticamente pelo nome do tipo (rawValue). Isso garante que os tipos apareçam em ordem alfabética na lista.
                //O ForEach passa dois parâmetros para o bloco de código: type (o tipo de Pokémon) e count (a quantidade de Pokémon desse tipo).
                ForEach(countPokemonsByType().sorted(by: { $0.key.rawValue < $1.key.rawValue }), id: \.key) { type, count in
                    HStack {
                        // Exibe o nome do tipo
                        Text(type.rawValue.capitalized)
                            .font(.headline)
                        Spacer()
                        // Exibe a quantidade de Pokémon desse tipo
                        Text("\(count)")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Estatisticas")
        }
    }
}

struct MyPreviewProvider_Previews: PreviewProvider {
    static var previews: some View {
        PokemonTypeCounter()
    }
}

