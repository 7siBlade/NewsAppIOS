//
//  ViewModel.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 31.08.2026.
//

import Foundation
import Combine

@MainActor
final class ViewModel: ObservableObject{
    @Published var topNews: [Article] = []
    @Published var bottomNews: [Article] = []
    @Published var state: LoadingState = .loading
        
    init() {
        fetchTopNews()
        fetchBottomNews()
    }
    
    func fetchTopNews() {
        state = .loading
        Task{
            do{
                let articles = try await NetworkManager.shared.getNews(urlString: URLConstants.topNewsURL)
                if articles.articles.isEmpty {
                    state = .empty
                } else {
                    topNews = articles.articles
                    state = .success
                }
                
            }catch{
                if let networkError = error as? NetworkError {
                    state = .error(networkError.localizedDescription)
                } else {
                    state = .error(error.localizedDescription)
                    print("Ошибка загрузки новостей: \(error)")
                }
            }
        }
    }
    
    func fetchBottomNews() {
        state = .loading
        Task{
            do{
                let articles = try await NetworkManager.shared.getNews(urlString: URLConstants.bottomNewsURL)
                if articles.articles.isEmpty {
                    state = .empty
                } else {
                    bottomNews = articles.articles
                    state = .success
                }
                
            }catch{
                if let networkError = error as? NetworkError {
                    state = .error(networkError.localizedDescription)
                } else {
                    state = .error(error.localizedDescription)
                    print("Ошибка загрузки новостей: \(error)")
                }
            }
        }
    }
}
