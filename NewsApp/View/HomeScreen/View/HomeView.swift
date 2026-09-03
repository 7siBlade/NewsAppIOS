//
//  ContentView.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 31.08.2026.
//

import SwiftUI

struct HomeView: View {
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                Text("Top News")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                switch vm.state {
                case .loading:
                    LoadingStatusView()
                case .empty:
                    EmptyStatusView()
                case .error(let message):
                    ErrorStatusView(message: message)
                case .success:
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing:12){
                            ForEach(vm.topNews, id: \.url) { article in
                                NavigationLink(destination: DetailView(article: article)) {
                                    TopArticleView(article: article)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
                }
                
                Text("Bottom News")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.leading)
                
                switch vm.state {
                case .loading:
                    LoadingStatusView()
                case .empty:
                    EmptyStatusView()
                case .error(let message):
                    ErrorStatusView(message: message)
                case .success:
                    ScrollView(.horizontal, showsIndicators: false){
                        HStack(spacing:12){
                            ForEach(vm.bottomNews, id: \.url) { article in
                                NavigationLink(destination: DetailView(article: article)) {
                                    BottomArticleView(article: article)
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding(.horizontal)
                    }
                    .shadow(color: .black.opacity(0.2), radius: 8, x: 5, y: 8)
                }
            }
            .background(.secondary.opacity(0.3))
            .refreshable {
                vm.fetchTopNews()
                vm.fetchBottomNews()
            }
        }
    }
}



#Preview {
    HomeView()
}
