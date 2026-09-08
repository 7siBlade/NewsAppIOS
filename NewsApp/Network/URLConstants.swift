//
//  URLConstants.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//

import Foundation

enum Environment {
    static var apiKey: String {
        guard let key = Bundle.main.object(forInfoDictionaryKey: "ApiKey") as? String else {
            fatalError("API Key не найден в Info.plist")
        }
        return key
    }
}

let mySecretKey = Environment.apiKey

struct URLConstants {
    static let topNewsURL = "https://newsapi.org/v2/everything?q=tesla&sortBy=publishedAt&apiKey=" + mySecretKey
    static let bottomNewsURL = "https://newsapi.org/v2/everything?q=apple&sortBy=popularity&apiKey=" + mySecretKey
}
