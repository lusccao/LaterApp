//
//  InMemoryLaterItemStorage.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 11/01/26.
//

import Foundation

final class InMemoryLaterItemStorage: LaterItemStore {
   
    private var items: [LaterItem] = []
    
    init(items: [LaterItem] = [
            LaterItem(id: UUID(), title: "Interstellar", type: .movie),
            LaterItem(id: UUID(), title: "Breaking Bad", type: .series),
            LaterItem(id: UUID(), title: "Clean Architecture", type: .book),
            LaterItem(id: UUID(), title: "Comprar café", type: .task)
    ]) {
        self.items = items
    }
    
    func fetchAll() -> [LaterItem] {
        items
    }
    
    func add(_ item: LaterItem) {
        items.append(item)
    }
    
    func update(_ item: LaterItem) {
        guard let index = items.firstIndex(where: { $0.id == item.id }) else { return }
        items[index] = item
    }
    
    func remove(_ item: LaterItem) {
        items.removeAll { $0.id == item.id }
    }

}
