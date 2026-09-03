//
//  ErrorView.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//
import SwiftUI

struct ErrorStatusView: View {
    @StateObject var vm = ViewModel()
    let message: String
    
    var body: some View {
        VStack(spacing: 10) {
            Text("Ошибка")
                .font(.headline)
            Text(message)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
            Button("Повторить") {
                vm.fetchTopNews()
            }
            .buttonStyle(.bordered)
        }
        .padding(.top, 50)

    }
}
