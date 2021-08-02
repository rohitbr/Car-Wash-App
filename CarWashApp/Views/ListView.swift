//
//  ListView.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/29/21.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject var storeList : ListCarWashStores
    let navigationTitle = "Car Wash Stores"
    
    var body: some View {
        List(storeList.carWashList) { store in
            NavigationLink(destination: StoreDescriptionView(storeCarWash: store)) {
                ListViewCell(storeCarWash: store )
            }
        }
        .listStyle(GroupedListStyle())
        .navigationTitle(navigationTitle)
        .onAppear() {
            UITableView.appearance().separatorStyle = .none
        }
    }
}

struct SimpleListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
