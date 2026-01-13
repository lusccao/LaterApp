//
//  HomeErrorStateView.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 13/01/26.
//

import SwiftUI

struct HomeErrorStateView: View {
    
    let retry: () async -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "exclamationmark.triangle")
                .font(.system(size: 48))
                .foregroundStyle(.orange)
            
            Text("Algo deu errado")
                .font(.title3)
                .fontWeight(.semibold)
            
            Button("Tentar novamente") {
                Task {
                    await retry()
                }
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}
