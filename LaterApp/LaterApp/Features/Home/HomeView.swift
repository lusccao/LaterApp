//
//  HomeView.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 06/01/26.
//

import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Home")
                .font(.largeTitle)
            Text(viewModel.title)
                .font(.headline)
        }
        .navigationTitle("Listas")
    }
}
