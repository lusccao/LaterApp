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
    
    private(set) var items: [LaterItem] = []
    
    init(store: LaterItemStore) {
        self.store = store
        loadItems()
    }
    
    // MARK: - FUNCTIONS
    private func loadItems() {
        items = store.fetchAll()
    }
    
    func addItem(title: String,
                 type: LaterItemType,
                 cover: LaterItemCover? = nil) {
        let newItem = LaterItem(title: title,
                                type: type,
                                cover: cover)
        store.add(newItem)
        loadItems()
    }
    
    func completeItem(_ item: LaterItem) {
        let updateItem = LaterItem(id: item.id,
                                   title: item.title,
                                   type: item.type,
                                   status: item.status,
                                   cover: item.cover,
                                   createdAt: item.createdAt,
                                   completedAt: Date()
        )
        store.update(updateItem)
        loadItems()
    }
    
    func removeItem(_ item: LaterItem) {
        store.remove(item)
        loadItems()
    }
}
