//
//  MapCoordinates.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/25/21.
//

import SwiftUI

struct MapCoordinates: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.callout)
            .foregroundColor(.blue)
            .padding(5)
            .overlay(
                RoundedRectangle(cornerRadius: 3)
                    .stroke(Color.black, lineWidth: 2)
            )
    }
}

struct StoreDescriptionTitles: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding(5)
    }
}

struct StoreDescription: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.callout)
            .padding(10)
            .autocapitalization(.none)
    }
}



extension Text {
    func storeDescritionTitle() -> some View {
        self.bold().underline()
            .modifier(StoreDescriptionTitles())
    }
}

