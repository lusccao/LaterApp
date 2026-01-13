//
//  HomeSkeletonView.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 13/01/26.
//

import SwiftUI

struct HomeSkeletonView: View {
    var body: some View {
        List {
            ForEach(0..<3, id: \.self) { _ in
                Section {
                    ForEach(0..<3, id: \.self) { _ in
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.gray.opacity(0.3))
                            .frame(height: 20)
                            .redacted(reason: .placeholder)
                    }
                }
            }
        }
        .disabled(true)
    }
}
