//
//  LaterItemStore.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 11/01/26.
//

import Foundation

protocol LaterItemStore {
    func fetchAll() -> [LaterItem]
    func add(_ item: LaterItem)
    func update(_ item: LaterItem)
    func remove(_ item: LaterItem)
}
