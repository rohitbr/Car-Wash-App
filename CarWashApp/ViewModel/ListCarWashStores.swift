//
//  ListCarWashStores.swift
//  CarWashApp
//
//  Created by Bhat, Rohit on 7/25/21.
//

import Foundation

class ListCarWashStores : ObservableObject {
    var carWashList : [CarWash] = []
    let jsonFileName = "carWashData"

    init() {
        guard let jsonUrl = Bundle.main.url(forResource: jsonFileName, withExtension: "json") else {
            return
        }
        guard let jsonData = try? Data(contentsOf: jsonUrl) else {
            return
        }
        do {
            carWashList = try JSONDecoder().decode([CarWash].self, from: jsonData)
            print("JSON", carWashList.description)
        }
        catch {
            print("DECODING ERROR:", error)
        }
    }
}
