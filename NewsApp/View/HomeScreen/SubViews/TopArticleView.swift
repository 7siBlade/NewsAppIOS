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
                        PhotoTemplate(rectangleHeightFrame: 150, imageFrame: 100)
                    }
                }
                .frame(width: 260, height: 150)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }else{
                PhotoTemplate(rectangleHeightFrame: 150, imageFrame: 100)
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
