//
//  ListViewCell.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/29/21.
//

import SwiftUI

struct ListViewCell: View {
    let storeCarWash: CarWash
    let imageWidth : CGFloat = 100
    let imageHeight : CGFloat = 60
    let cornerRadius : CGFloat = 5
    let lineWidth : CGFloat = 1

    var body: some View {
        HStack {
            renderImage()
            VStack(alignment: .leading) {
                renderStoreText()
                renderLatitudeInfo()
            }
            Spacer()
        }
        .padding(.vertical, 5)
    }
    
    func renderImage() -> some View {
        return Image(storeCarWash.mainImage)
            .resizable()
            .frame(width: imageWidth, height: imageHeight)
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .strokeBorder(Color.black, lineWidth: lineWidth)
            )
    }
    
    func renderStoreText() -> some View {
        return Text(storeCarWash.carWashName)
            .font(.callout)
    }
    
    func renderLatitudeInfo() -> some View {
        return Text("\(storeCarWash.address)")
            .font(.caption2)
            .foregroundColor(.secondary)
    }
}
