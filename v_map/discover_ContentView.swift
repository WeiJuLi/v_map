//
//  discover_ContentView.swift
//  v_map
//
//  Created by weinu on 2022/11/26.
//

import SwiftUI


struct discover_ContentView: View {
    let location: Location
    var body: some View {
        
        NavigationView {
            HStack {
                Image(location.heroPicture)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 70)
                    .cornerRadius(8)
                    .padding(.vertical, 4)
                
                VStack(alignment: .leading, spacing: 5) {
                    SwiftUI.Text(location.name)
                        .fontWeight(.semibold)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                    
                    SwiftUI.Text(location.address)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(2)
                        .minimumScaleFactor(0.5)
                }
            }
            
            
        }
        .listRowSeparator(.hidden)
    }
}


struct discover_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        discover_ContentView(location: Location.example)
    }
}
