//
//  BottomArticleView.swift
//  NewsApp
//
//  Created by Vitaliy Pupchenko on 02.09.2026.
//

import SwiftUI
struct BottomArticleView: View {
    let article: Article
    var body: some View {
        VStack{
            if let url = article.urlToImage, let imageURL = URL(string: url){
                AsyncImage(url: imageURL){ phase in
                    if let image = phase.image{
                        image
                            .resizable()
                            .scaledToFit()
                            .frame(width: 230, height: 230)
                            .clipped()
                            .cornerRadius(10)
                    }else{
                        ZStack{
                            Rectangle()
                                .frame(width: 120, height: 120)
                                .foregroundStyle(.secondary)
                                .opacity(0.3)
                                .cornerRadius(10)
                            Image(systemName: "photo")
                                .resizable()
                                .foregroundStyle(.secondary)
                                .scaledToFit()
                                .frame(height: 50)
                        }
                    }
                }
                .frame(width: 120, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }else{
                ZStack{
                    Rectangle()
                        .frame(width: 120, height: 120)
                        .foregroundStyle(.secondary)
                        .opacity(0.3)
                        .cornerRadius(10)
                    Image(systemName: "photo")
                        .resizable()
                        .foregroundStyle(.secondary)
                        .scaledToFit()
                        .frame(height: 50)
                }
            }
                                            
            VStack(alignment: .leading){
                if let title = article.title {
                    Text(title).titleFont()
                }
                Spacer()
                Text(article.publishedAt.convertData()).descriptionFont()
            }
        }
        .frame(width: 120, height: 240)
        .padding(10)
        .background(.background)
        .cornerRadius(10)

    }
}

#Preview {
    HomeView()
}
