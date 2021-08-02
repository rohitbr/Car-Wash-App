//
//  PictureListView.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/25/21.
//

import SwiftUI

struct PictureListView: View {
    @EnvironmentObject var storeList : ListCarWashStores
    let navigationTitle = "Car Wash Stores"

    var body: some View {
        List(storeList.carWashList) { store in
            NavigationLink(destination: StoreDescriptionView(storeCarWash: store)) {
                StoreCardView(store: store)
            }
        }
        .navigationTitle(navigationTitle)
        .onAppear() {
            UITableView.appearance().separatorStyle = .none
        }
    }
    
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        StoreCardView(store: CarWash.dummyData)
    }
}
