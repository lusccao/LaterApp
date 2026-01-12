//
//  HomeView.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 06/01/26.
//

import SwiftUI

struct HomeView: View {
    
    @State private var viewModel: HomeViewModel
    
    init(viewModel: HomeViewModel) {
        _viewModel = State(initialValue: viewModel)
    }
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Home")
                .font(.largeTitle)
            
            Text("itens: \(viewModel.items.count)")
                .font(.headline)
        }
        .navigationTitle("Listas")
    }
}
