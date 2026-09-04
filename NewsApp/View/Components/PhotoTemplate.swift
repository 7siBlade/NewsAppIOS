//
//  PhotoTemplate.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 04.09.2026.
//
import SwiftUI

struct PhotoTemplate: View {
    var rectangleWidthFrame: CGFloat? = nil
    let rectangleHeightFrame: CGFloat
    let imageFrame: CGFloat
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: rectangleWidthFrame, height: rectangleHeightFrame) //120
                .foregroundStyle(.secondary)
                .opacity(0.3)
                .cornerRadius(10)
            Image(systemName: "photo")
                .resizable()
                .foregroundStyle(.secondary)
                .scaledToFit()
                .frame(height: imageFrame) //50
        }
    }
}
