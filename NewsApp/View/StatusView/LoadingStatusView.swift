//
//  LoadingView.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//
import SwiftUI

struct LoadingStatusView: View {
    var body: some View {
        ProgressView("Загрузка...")
            .frame(maxWidth: .infinity)
            .padding(.top, 50)
    }
}
