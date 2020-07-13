//
//  Rotate.swift
//  TestSwiftUI
//
//  Created by Andrey on 13.07.2020.
//  Copyright © 2020 Andrey. All rights reserved.
//

import SwiftUI

struct Rotate: ViewModifier {
    @State var isRotating = false

    func body(content: Content) -> some View {
        content
            .rotationEffect(.init(degrees: isRotating ? 360 : 0))
            .animation(Animation.linear(duration: 1))
            .onAppear {
                self.isRotating = true
            }
    }
}

extension View {
    func rotate() -> some View {
        self.modifier(Rotate())
    }
}
