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
        Group {
            switch viewModel.state {
            case .loading:
                HomeSkeletonView()
            case .empty:
                HomeEmptyStateView() {
                    print("Abrir fluxo de criação de task")
                }
                
            case .error:
                HomeErrorStateView() {
                    await viewModel.load()
                }
            case .content:
                List {
                    ForEach(viewModel.sections) { section in
                        Section(section.title) {
                            ForEach(section.items) { item in
                                Text(item.title)
                            }
                        }
                    }
                }
                .refreshable {
                    await viewModel.load()
                }
            }
        }
        .navigationTitle("Later")
    }
}
