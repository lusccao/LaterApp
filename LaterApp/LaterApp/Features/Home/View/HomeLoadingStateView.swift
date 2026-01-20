//
//  HomeLoadingStateView.swift
//  LaterApp
//
//  Created by Lucas Arthur Chagas Feitosa on 13/01/26.
//

import SwiftUI

struct HomeLoadingStateView: View {
    var body: some View {
        VStack{
            ProgressView()
                .progressViewStyle(.circular)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
