//
//  ArticleView.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//


import SwiftUI

struct TopArticleView: View {
    let article: Article
    var body: some View {
        VStack{
            if let url = article.urlToImage, let imageURL = URL(string: url){
                AsyncImage(url: imageURL) {phase in
                    if let image = phase.image {
                        image
                            .resizable()
                            .scaledToFit()
                            //.frame(width: 260, height: 150)
                            .clipped()
                            .cornerRadius(10)
                    } else {
                        ZStack{
                            Rectangle()
                                .frame(height: 150)
                                .foregroundStyle(.secondary)
                                .cornerRadius(10)
                                .opacity(0.3)
                                                            
                            Image(systemName: "photo")
                                .resizable()
                                .foregroundStyle(.secondary)
                                .scaledToFit()
                                .frame(height: 100)
                        }
                    }
                }
                .frame(width: 260, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }else{
                ZStack{
                    Rectangle()
                        .frame(height: 150)
                        .foregroundStyle(.secondary)
                        .cornerRadius(10)
                        .opacity(0.3)
                                                    
                    Image(systemName: "photo")
                        .resizable()
                        .foregroundStyle(.secondary)
                        .scaledToFit()
                        .frame(height: 100)
                }
            }
                                            
            VStack(alignment: .leading){
                if let title = article.title {
                    Text(title).titleFont()
                }
                Spacer()
                Text(article.publishedAt.convertData()).descriptionFont()
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .frame(width: 260, height: 260)
        .padding(10)
        .background(.background)
        .cornerRadius(10)
    }
}

#Preview {
    HomeView()
}
