//
//  ContentView.swift
//  TestSwiftUI
//
//  Created by Andrey on 13.07.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: ViewModel

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.articles) { article in
                    ArticleView(article: article)
                }
            }
            .navigationBarTitle("Новости")
        .navigationBarItems(trailing: reorder)
        }
    }
    
    var reorder: some View {
        let sortOrder = viewModel.sortAscending ? "↓" : "↑"
        return Button("Сортировка \(sortOrder)") {
            self.viewModel.reorder()
        }
    }
}

struct ArticleView: View {
    let article: Model.Article
    
    var body: some View {
        HStack {
            Image(systemName: article.image)
                .frame(minWidth: 30)
                .rotate()
            Text(article.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = ViewModel()
        return ContentView(viewModel: viewModel)
    }
}
