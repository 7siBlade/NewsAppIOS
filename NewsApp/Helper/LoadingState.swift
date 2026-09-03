//
//  LoadingState.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//


import Foundation
import Combine

enum LoadingState {
        case loading
        case success
        case empty
        case error(String)
    }