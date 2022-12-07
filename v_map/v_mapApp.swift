//
//  v_mapApp.swift
//  v_map
//
//  Created by weinu on 2022/11/9.
//

import SwiftUI

@main
struct v_mapApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                
                NavigationView {
                    worldView()
                }
                .tabItem{
                    Image(systemName: "map.fill")
                    Text("Bar Map")
                }
                
                NavigationView{
                    discover()
                    //ContentView(location: locations.primary)
                }
                .tabItem{
                    Image(systemName: "fork.knife.circle.fill")
                    //default image : get the link below the video 
                    Text("Discover")
                }
                
            }
            
            .environmentObject(locations)
            
        }
    }
}
