//
//  CarWashAppApp.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/25/21.
//

import SwiftUI

@main
struct CarWashAppApp: App {
    enum TabItems {
        case InfoList
        case PictureList
        case MapView
        
        func systemImageName() -> String {
            switch self {
            case .InfoList:
                return "list.dash"
            case .PictureList:
                return "rectangle"
            case .MapView:
                return "map.fill"
            }
        }
        
        func TabBarName() -> String {
            switch self {
            case .InfoList:
                return "Info List View"
            case .PictureList:
                return "Picture List View"
            case .MapView:
                return "Map View"
            }
        }
        
    }

    
    @StateObject var carWashList = ListCarWashStores()

    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ListView()
                }.tabItem {
                    Image(systemName: TabItems.InfoList.systemImageName())
                    Text(TabItems.InfoList.TabBarName())
                }
                NavigationView {
                    PictureListView()
                }.tabItem {
                    Image(systemName: TabItems.PictureList.systemImageName())
                    Text(TabItems.PictureList.TabBarName())
                }
                NavigationView {
                    MapView()
                }.tabItem {
                    Image(systemName: TabItems.MapView.systemImageName())
                    Text(TabItems.MapView.TabBarName())
                }
            }
            .environmentObject(carWashList)
        }
    }
}
