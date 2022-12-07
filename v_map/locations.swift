//
//  locations.swift
//  v_map
//
//  Created by weinu on 2022/11/12.
//

import Foundation


class Locations: ObservableObject{
    // 有別於struc另一種data structure，差別在於class可共用，struc不可。
    // ObservableObject : 當源頭改變，共用的地方也會同時改變的物件。
    // ! means if fail then app will crash
    let places: [Location] // 可儲存多個變數值
    
    var primary: Location {
        places[0] // first location 
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", //json file name : locations
            withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
    
}

    


