//
//  HomeView.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 06/01/26.
//

import SwiftUI

struct HomeView: View {
    let viewModel: HomeViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.sections) { section in
                Section(section.title) {
                    ForEach(section.items) { item in
                        Text(item.title)
                    }
                }
            }
        }
        .navigationTitle("Later")
    }
}
