//
//  worldView.swift
//  v_map
//
//  Created by weinu on 2022/11/12.
//

import MapKit
import SwiftUI

struct worldView: View {
    @EnvironmentObject var locations: Locations
    @State  var region = MKCoordinateRegion(
        //@State 監聽＆儲存此變數的狀態
        center:
            //define the center location of the map
            //here is the center of the london
        CLLocationCoordinate2D(latitude: 22.99737117898964, longitude: 120.20090605067608),
        
        latitudinalMeters: 1200,
        longitudinalMeters: 1200
        //span:
            // 控制地圖縮放的大小
            //MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)

    )
    
    var body: some View {
        Map(coordinateRegion: $region,
            //two ways binding : write and read
            annotationItems: locations.places){
            location in
            MapAnnotation(coordinate:
                            CLLocationCoordinate2D(
                                latitude:location.latitude
                                ,longitude:location.longitude)){
                                    NavigationLink(destination: ContentView(location: location)) {
                                Image(location.country)
                                        .resizable()
                                        .cornerRadius(10)
                                        .frame(width: 60, height:70)
                                        .shadow(radius: 3)
                }
            }
        }
            .navigationTitle("Bar Map")
    }
}

struct worldView_Previews: PreviewProvider {
    static var previews: some View {
        worldView()
    }
}
