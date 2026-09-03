//
//  EmptyView.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//
import SwiftUI

struct EmptyStatusView: View {
    var body: some View{
        Text("Новости не найдены")
            .foregroundColor(.secondary)
            .padding(.top, 50)
    }
}
