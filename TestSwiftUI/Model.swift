//
//  Model.swift
//  TestSwiftUI
//
//  Created by Andrey on 13.07.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import Foundation

struct Model {
    private(set) var news: Array<Article> = fetchNews()
    private(set) var sortAscending = true
    
    struct Article : Identifiable {
        let id: Int
        let title: String
        let image: String
    }
    
    mutating func reorder() {
        sortAscending = !sortAscending
        news.sort { (first, second) -> Bool in
            return sortAscending ? (first.id <= second.id) : (first.id >= second.id)
        }
    }

    static private func fetchNews() -> [Article] {
        var news = Array<Article>()
        news.append(Article(id: 0, title: "Крупную кобру забрали из деревни и выпустили в лес", image: "ant"))
        news.append(Article(id: 1, title: "Усевшись в каяк, мужчина пустился в плавание по улице", image: "flame"))
        news.append(Article(id: 2, title: "Водитель решил не покупать Lamborghini, а сделать его своими руками", image: "car"))
        news.append(Article(id: 3, title: "Грабителем, похищавшим одежду, оказался кот", image: "hare"))
        return news
    }
}
