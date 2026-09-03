//
//  NetworkError.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 31.08.2026.
//


import Foundation

enum NetworkError: String, Error {
    case invalidURL = "Invalid URL"
    case invalidResponse = "Invalid response from the server"
    case invalidData = "Invalid data"
}