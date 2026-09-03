//
//  MainImageView.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//

import SwiftUI

struct MainImageView: View {
    let article: Article
    var body: some View {
        GeometryReader { reader in
            if let url = article.urlToImage, let imageURL = URL(string: url) {
                AsyncImage(url: imageURL) { phase in
                    if let image = phase.image{
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .offset(y: -reader.frame(in: .global).minY)
                            .frame(width: SizeConstant.screenWidth, height: reader.frame(in: .global).minY + SizeConstant.avatarHeight + 10)
                    }
                }
            }
        }
        .frame(height: SizeConstant.avatarHeight)
    }
}
