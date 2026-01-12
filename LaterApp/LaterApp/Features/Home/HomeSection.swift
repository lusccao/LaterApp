//
//  HomeSection.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 12/01/26.
//

import Foundation

struct HomeSection: Identifiable {
    var id: UUID = UUID()
    var type: LaterItemType
    var items: [LaterItem]
    
    var title: String {
        switch type {
        case .movie: return "Filmes"
        case .series: return "Séries"
        case .book: return "Livros"
        case .task: return "Tarefas"
        case .game: return "Jogos"
        }
    }
}
