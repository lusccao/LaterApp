//
//  HomeViewModel.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 06/01/26.
//

import Foundation
import Observation

@Observable
final class HomeViewModel {
    
    private let store: LaterItemStore
    
    var sections: [HomeSection] = []
    var state: HomeViewState = .empty
    
    init(store: LaterItemStore) {
        self.store = store
        Task {
            await load()
        }
    }
    
    // MARK: - FUNCTIONS
    
    @MainActor
    func load() async {
        state = .loading
        
        do {
            try? await Task.sleep(for: .milliseconds(600))
            
//            // TODO: - Simulação de erro ocasional, remover no futuro
//            if Bool.random() {
//                throw URLError(.badServerResponse)
//            }
            
            let items = store.fetchAll()
            
            guard !items.isEmpty else {
                sections = []
                state = .empty
                return
            }
            
            sections = Dictionary(grouping: items, by: \.type)
                .map { type, items in
                    let sortedItems = items.sorted {
                        $0.createdAt < $1.createdAt
                    }
                    return HomeSection(type: type, items: sortedItems)
                }
                .sorted {
                    HomeSection.order(for: $0.type) < HomeSection.order(for: $1.type)
                }
            
            state = sections.isEmpty ? .empty : .content
        } catch {
            sections = []
            state = .error
        }
    }
}
