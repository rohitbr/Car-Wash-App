//
//  MapView.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/25/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    @EnvironmentObject var stores : ListCarWashStores
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 33.92, longitude: -84.35),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )
    let navigationTitle = "Store Maps"
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: stores.carWashList) { store in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: store.latitude, longitude: store.longitude)) {
                NavigationLink(destination: StoreDescriptionView(storeCarWash: store)) {
                    mapAnnotationView(store: store)
                }
            }
        }
        .navigationTitle(navigationTitle)
    }
    
    func mapAnnotationView(store : CarWash) -> some View {
        let cornerRadius : CGFloat = 10
        let imageWidth : CGFloat = 50
        let imageHeight : CGFloat = 30
        return VStack {
            Image(store.mainImage)
                .resizable()
                .cornerRadius(cornerRadius)
                .frame(width: imageWidth, height: imageHeight)
            Text(store.carWashName)
                .font(.caption)
                .bold()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
