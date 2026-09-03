//
//  Extensions+Text.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 31.08.2026.
//

import Foundation
import SwiftUI

extension Text{
    func titleFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 18, weight: .bold, design: .rounded))
            .opacity(0.8)
    }
    
    func descriptionFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 16, weight: .regular, design: .rounded))
            .opacity(0.8)
    }
    
    func dateFont() -> some View {
        self
            .foregroundStyle(.primary)
            .font(.system(size: 14, weight: .regular, design: .rounded))
            .opacity(0.5)
    }
}
