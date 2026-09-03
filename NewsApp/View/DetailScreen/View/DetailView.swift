//
//  DetailView.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//

import SwiftUI

struct DetailView: View {
    let article: Article
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){
            MainImageView(article: article)
            VStack(alignment: .leading, spacing: 20) {
                if let title = article.title {
                    Text(title).titleFont()
                }
                Text(article.description).descriptionFont()
                Text(article.publishedAt.convertData()).dateFont()
            }
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(.background )
            .background(GradientAvatarVieiw())
        }
    }
}

struct GradientAvatarVieiw: View {
    var body: some View {
        GeometryReader { _ in
            LinearGradient(
                colors: [Color(UIColor.systemBackground), .clear],
                startPoint: .bottom,
                endPoint: .top
            )
            .frame(height: SizeConstant.avatarHeight / 4)
            .offset(y: -SizeConstant.avatarHeight / 4)
        }
    }
}

#Preview {
    DetailView(
        article: Article(
            title: "Example",
            description: "asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd",
            url: "",
            urlToImage: "https://picsum.photos/200",
            publishedAt: Date()
        )
    )
}
