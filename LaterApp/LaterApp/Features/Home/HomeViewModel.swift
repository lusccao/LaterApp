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
    
    func loadItems() {
        items = store.fetchAll()
    }
}
