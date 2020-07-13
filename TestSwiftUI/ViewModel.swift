//
//  ViewModel.swift
//  TestSwiftUI
//
//  Created by Andrey on 13.07.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published private var model = Model()
    
    var articles: [Model.Article] {
        model.news
    }
    
    var sortAscending: Bool {
        model.sortAscending
    }
    
    func reorder() {
        model.reorder()
    }
}
