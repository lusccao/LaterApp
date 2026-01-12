//
//  ContentView.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 06/01/26.
//

import SwiftUI

struct RootView: View {
    
    let store: LaterItemStore
    
    var body: some View {
        NavigationStack {
            HomeView(viewModel: HomeViewModel(store: store))
        }
    }
}

#Preview {
    RootView(
        store: InMemoryLaterItemStorage()
    )
}
