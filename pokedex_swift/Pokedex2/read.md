# 📱 Pokedex iOS - Primeira Geração

<div align="center">

![Swift](https://img.shields.io/badge/Swift-FA7343?style=for-the-badge&logo=swift&logoColor=white)
![SwiftUI](https://img.shields.io/badge/SwiftUI-0D96F6?style=for-the-badge&logo=swift&logoColor=white)
![iOS](https://img.shields.io/badge/iOS-000000?style=for-the-badge&logo=ios&logoColor=white)
![Xcode](https://img.shields.io/badge/Xcode-147EFB?style=for-the-badge&logo=xcode&logoColor=white)
![Status](https://img.shields.io/badge/Status-Concluído-success?style=for-the-badge)

**Aplicativo iOS nativo de Pokedex com os 151 Pokémon da primeira geração!**

</div>

---

## 📌 Sobre o Projeto

**Pokedex iOS** é um aplicativo nativo desenvolvido em SwiftUI que apresenta informações sobre os 151 Pokémon originais da primeira geração. O app permite visualizar a lista completa de Pokémon com seus tipos elementais e consultar estatísticas sobre a distribuição de tipos na Pokedex.

## 🎯 Objetivo

Este projeto foi desenvolvido com os seguintes objetivos:

- 📚 **Aprendizado de SwiftUI**: Praticar desenvolvimento iOS nativo
- 🎮 **Exploração de Dados**: Trabalhar com estruturas de dados complexas
- 📊 **Visualização de Informações**: Apresentar dados de forma organizada
- 🧮 **Manipulação de Arrays**: Implementar contadores e filtros

## ✨ Funcionalidades

### 📋 Aba Pokedex
- **Lista Completa**: Todos os 151 Pokémon da primeira geração
- **Nome e Tipo**: Exibição do nome e tipos elementais
- **Scroll Infinito**: Navegação fluida pela lista
- **Capitalização Automática**: Nomes formatados corretamente
- **Interface Nativa**: Design iOS padrão com NavigationView

### 📊 Aba Estatísticas
- **Contador por Tipo**: Quantidade de Pokémon por tipo elemental
- **Ordenação Alfabética**: Tipos organizados de A-Z
- **18 Tipos Diferentes**: Cobertura completa dos tipos Pokémon
- **Contagem em Tempo Real**: Cálculo automático das estatísticas

### 🎨 Interface com Tabs
- **TabView**: Navegação por abas nativas do iOS
- **Ícones Personalizados**: 
  - 🎾 Cricket ball para Pokedex
  - 📈 Gráfico para Estatísticas
- **Transições Suaves**: Animações nativas do sistema

## 🏗️ Estrutura do Projeto

```
Pokedex/
│
├── pokedexApp.swift              # Entry point do app
├── ContentView.swift             # View principal com TabView
│
├── Models:
│   └── Pokemon.swift             # Struct Pokemon e ElementType enum
│
├── Views:
│   ├── PokedexView.swift        # View da lista de Pokémon
│   ├── PokemonView.swift        # Lista com NavigationView
│   ├── PokemonTypeCounter.swift # Estatísticas por tipo
│   └── StatisticView.swift      # View auxiliar
│
└── Assets/                       # Imagens e recursos
```

## 🗂️ Estrutura de Dados

### Pokemon Struct
```swift
struct Pokemon: Identifiable {
    var id: Int           // Número da Pokedex (1-151)
    var name: String      // Nome do Pokémon
    var types: [ElementType]  // Array de tipos
}
```

### ElementType Enum
18 tipos elementais disponíveis:
- 🌿 Grass (Planta)
- 🧪 Poison (Veneno)
- 🔥 Fire (Fogo)
- 🦅 Flying (Voador)
- 💧 Water (Água)
- 🐛 Bug (Inseto)
- ⚪ Normal
- ⚡ Electric (Elétrico)
- 🏔️ Ground (Terra)
- 🧚 Fairy (Fada)
- 🔮 Psychic (Psíquico)
- 🪨 Rock (Pedra)
- ❄️ Ice (Gelo)
- 🐲 Dragon (Dragão)
- 🌑 Dark (Sombrio)
- ⚙️ Steel (Aço)
- 🥊 Fighting (Lutador)
- 👻 Ghost (Fantasma)

## 🛠️ Tecnologias Utilizadas

### Linguagem e Framework
- **Swift 5.x**: Linguagem de programação moderna da Apple
- **SwiftUI**: Framework declarativo para UI
- **Xcode**: IDE oficial para desenvolvimento iOS

### Conceitos SwiftUI Aplicados
- **TabView**: Navegação por abas
- **NavigationView**: Navegação hierárquica
- **List**: Listas dinâmicas e eficientes
- **ForEach**: Iteração sobre arrays
- **HStack/VStack**: Organização de layouts
- **@main**: Entry point do aplicativo
- **Identifiable Protocol**: Identificação única de elementos
- **Enums com RawValue**: Tipos seguros e conversíveis

### Funcionalidades iOS
- **System Images (SF Symbols)**: Ícones nativos do iOS
- **Navigation Title**: Títulos de navegação
- **Tab Items**: Configuração de abas
- **Text Formatting**: Capitalização e estilos de fonte

## 📊 Estatísticas da Pokedex

### Distribuição de Tipos (151 Pokémon)

| Tipo | Quantidade |
|------|------------|
| 💧 Water | 32 |
| ⚪ Normal | 22 |
| 🌿 Grass | 14 |
| 🧪 Poison | 33 |
| 🐛 Bug | 12 |
| 🔥 Fire | 12 |
| 🦅 Flying | 19 |
| ⚡ Electric | 9 |
| 🏔️ Ground | 14 |
| 🥊 Fighting | 8 |
| 🔮 Psychic | 14 |
| 🪨 Rock | 11 |
| ❄️ Ice | 5 |
| 👻 Ghost | 3 |
| 🐲 Dragon | 3 |
| 🧚 Fairy | 5 |
| ⚙️ Steel | 2 |
| 🌑 Dark | 0 (introduzido na 2ª geração) |

**Nota**: Alguns Pokémon possuem tipos duplos, por isso a soma total ultrapassa 151.

## 💡 Funcionalidades Técnicas

### Contagem de Tipos (`countPokemonsByType()`)

```swift
func countPokemonsByType() -> [ElementType: Int] {
    var typeCounts: [ElementType: Int] = [:]
    
    for pokemon in pokemons {
        for type in pokemon.types {
            typeCounts[type] = (typeCounts[type] ?? 0) + 1
        }
    }
    
    return typeCounts
}
```

**Lógica**:
1. Cria dicionário vazio para armazenar contagens
2. Itera sobre todos os 151 Pokémon
3. Para cada Pokémon, itera sobre seus tipos
4. Incrementa o contador do tipo (ou inicializa em 1)
5. Retorna dicionário com [Tipo: Quantidade]

### Ordenação Alfabética

```swift
.sorted(by: { $0.key.rawValue < $1.key.rawValue })
```

Ordena os tipos pelo valor da string (bug, dark, dragon, etc.)

## 📱 Capturas de Tela

### Aba Pokedex
Lista com todos os Pokémon mostrando:
- Número e nome (ex: "Pikachu")
- Tipos (ex: "Electric")

### Aba Estatísticas
Contador mostrando:
- Tipo (ex: "Water")
- Quantidade (ex: "32")

## 🎮 Pokémon Destacados

### Iniciais (Starters)
- 🌿 #001 Bulbasaur (Grass/Poison)
- 🔥 #004 Charmander (Fire)
- 💧 #007 Squirtle (Water)

### Lendários
- ❄️ #144 Articuno (Ice/Flying)
- ⚡ #145 Zapdos (Electric/Flying)
- 🔥 #146 Moltres (Fire/Flying)
- 🐲 #149 Dragonite (Dragon/Flying)
- 🔮 #150 Mewtwo (Psychic)
- 🔮 #151 Mew (Psychic)

### Mais Populares
- ⚡ #025 Pikachu (Electric)
- 🐲 #006 Charizard (Fire/Flying)
- 💧 #009 Blastoise (Water)
- 👻 #094 Gengar (Ghost/Poison)

## 📚 Recursos de Aprendizado

Este projeto é ideal para aprender:
- Fundamentos de SwiftUI
- Estruturas de dados Swift (Struct, Enum, Protocol)
- Manipulação de Arrays e Dicionários
- TabView e NavigationView
- List e ForEach
- Identifiable Protocol
- String manipulation e formatting

## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para:

- Adicionar mais gerações de Pokémon
- Implementar imagens dos Pokémon
- Melhorar a UI/UX
- Adicionar testes unitários
- Corrigir bugs ou otimizar código


## 👨‍💻 Autor

**Guilherme Miyamoto Bragatto**

- 📧 Email: guimbragatto@gmail.com
- 💼 LinkedIn: [Guilherme Miyamoto Bragatto](https://www.linkedin.com/in/guilherme-miyamoto-bragatto-2102b4355)
- 🐙 GitHub: [@bragatto-tec](https://github.com/bragatto-tec)


<div align="center">



*Desenvolvido com 🎮 e 🍎 *



</div>
