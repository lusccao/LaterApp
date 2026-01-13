//
//  HomeEmptyStateView.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 12/01/26.
//

import SwiftUI

struct HomeEmptyStateView: View {
    
    let onAddTask: () -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "bookmark")
                .font(.system(size: 48))
                .foregroundStyle(.secondary)
            
            Text("Nada por aqui ainda")
                .font(.title3)
                .fontWeight(.semibold)

            Text("Salve filmes, séries, livros e tarefas para ver depois.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
            
            Button("Adicionar tarefa") {
                onAddTask()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
