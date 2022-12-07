//
//  obLists.swift
//  v_map
//
//  Created by weinu on 2022/11/27.
//

import SwiftUI

struct obLists: View {
    var Locations: Locations
    var body: some View {
        List(Locations.places,id:\.id){ location in
            discover_ContentView(location: location)
        }
    }
}

