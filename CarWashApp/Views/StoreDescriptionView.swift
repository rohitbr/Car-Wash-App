//
//  StoreDescriptionView.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/25/21.
//

import SwiftUI
import MapKit

struct StoreDescriptionView: View {
    let storeCarWash : CarWash
    
    @State private var region = MKCoordinateRegion()
    @State private var annotationItems : [CarWash] = []
    let coordinateDelta = 0.01
    let mapWidth : CGFloat = 400.0
    let mapHeight : CGFloat = 300.0
    let kAboutUs = "About us"
    let kStoreImage = "Store Image"
    let kLocationCoordinates = "Location Coordinates"
    let navigationTitle = "Description"

    var body: some View {
        ScrollView {
            
            Text(kAboutUs)
                .storeDescritionTitle()
            Text(storeCarWash.description)
                .modifier(StoreDescription())
            
            Text(kStoreImage)
                .storeDescritionTitle()
            StoreCardView(store: storeCarWash)
                .padding()
                        
            Text(kLocationCoordinates)
                .storeDescritionTitle()
            Map(coordinateRegion: $region, annotationItems: annotationItems) { location in
                MapPin(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude))
            }
            .frame(width: mapWidth, height: mapHeight)
            .onAppear {self.setRegion()}
  
        }
        .navigationTitle(navigationTitle)
    }
    
    private func setRegion(){
        region = MKCoordinateRegion(center: CLLocationCoordinate2D(
                                        latitude: storeCarWash.latitude, longitude: storeCarWash.longitude),
                                    span: MKCoordinateSpan(latitudeDelta: coordinateDelta, longitudeDelta: coordinateDelta))
        annotationItems = [storeCarWash]
    }
}

struct StoreDescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDescriptionView(storeCarWash: CarWash.dummyData)
    }
}
