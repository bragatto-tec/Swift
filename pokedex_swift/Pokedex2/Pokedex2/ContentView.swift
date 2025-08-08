//
//  ContentView.swift
//  pokedex
//
//  Created by Aluno Mack on 19/03/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // TabView para criar abas na interface
        TabView {
            // Primeira aba: Pokedex
            PokemonView()
                .tabItem {
                    Label("Pokedex", systemImage: "cricket.ball.fill")
                }

            // Segunda aba: Estatísticas
            PokemonTypeCounter()
                .tabItem {
                    Label("Estatísticas", systemImage: "chart.xyaxis.line")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview da ContentView
        ContentView()
    }
}
