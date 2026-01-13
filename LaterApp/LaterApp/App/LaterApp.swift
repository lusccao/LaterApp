//
//  LaterAppApp.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 06/01/26.
//

import SwiftUI

@main
struct LaterApp: App {
    
    private let store = InMemoryLaterItemStorage()
    
    var body: some Scene {
        WindowGroup {
            RootView(store: store)
        }
    }
}
