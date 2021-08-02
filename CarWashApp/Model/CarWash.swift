//
//  CarWash.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/25/21.
//

import Foundation

struct CarWash : Decodable, Identifiable {
    let id : Int
    let carWashName : String
    let address : String
    let latitude : Double
    let longitude : Double
    let mainImage : String
    let description : String
}

extension CarWash {
    static let dummyData = CarWash(id: 2, carWashName: "Cartique", address: "Dunwoody GA 30346", latitude: 35.44, longitude: 76.66, mainImage: "Cartique", description: "Short description")
}
