//
//  MockLaterItemStore.swift
//  LaterAppTests
//
//  Created by Lucas Arthur Chagas Feitosa on 13/01/26.
//

@testable import LaterApp

final class MockLaterItemStore: LaterItemStore {

    var items: [LaterItem] = []

    func fetchAll() -> [LaterItem] {
        items
    }

    func add(_ item: LaterItem) {
        items.append(item)
    }

    func update(_ item: LaterItem) {
        guard let index = items.firstIndex(where: { $0.id == item.id }) else {
            return
        }
        items[index] = item
    }

    func remove(_ item: LaterItem) {
        items.removeAll { $0.id == item.id }
    }
}
