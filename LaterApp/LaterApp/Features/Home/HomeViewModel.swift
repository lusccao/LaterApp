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
    
    let store: LaterItemStore
    
    var sections: [HomeSection] = []
    
    init(store: LaterItemStore) {
        self.store = store
        load()
    }
    
    // MARK: - FUNCTIONS
    private func load() {
        let items = store.fetchAll()
        
        sections = Dictionary(grouping: items, by: \.type)
            .map { HomeSection(type: $0.key, items: $0.value) }
            .sorted {$0.type.rawValue < $1.type.rawValue }
    }
}
