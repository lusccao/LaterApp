//
//  LaterItem.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 11/01/26.
//

import Foundation

struct LaterItem: Identifiable, Equatable {
    let id: UUID
    let title: String
    let type: LaterItemType
    let status: LaterItemStatus
    let cover: LaterItemCover?
    let createdAt: Date
    let completedAt: Date?
    
    init(id: UUID = UUID(),
         title: String,
         type: LaterItemType,
         status: LaterItemStatus = .pending,
         cover: LaterItemCover? = nil,
         createdAt: Date = Date(),
         completedAt: Date? = nil) {
        self.id = id
        self.title = title
        self.type = type
        self.status = status
        self.cover = cover
        self.createdAt = createdAt
        self.completedAt = completedAt
    }
}
