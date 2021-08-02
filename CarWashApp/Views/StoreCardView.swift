//
//  StoreCardView.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/25/21.
//

import SwiftUI

struct StoreCardView: View {
    var store : CarWash
    
    let cornerRadius : CGFloat = 16
    let lineWidth : CGFloat = 4
    let imageShadow : CGFloat = 3
    
    var body: some View {
        VStack {
            Text(store.carWashName)
                .bold()
            
            Image(store.mainImage)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .shadow(radius: imageShadow)
            
            Text("\(store.address)")
                .font(.callout)
                .foregroundColor(.secondary)
                .padding(.bottom)
        }
        .padding(.top)
        .overlay(
            RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(Color.black, lineWidth: lineWidth)
        )
    }
}

struct StoreCardView_Previews: PreviewProvider {
    static var previews: some View {
        StoreCardView(store: CarWash.dummyData)
    }
}
