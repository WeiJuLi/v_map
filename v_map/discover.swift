//
//  discover.swift
//  v_map
//
//  Created by weinu on 2022/11/22.
//

import SwiftUI


struct discover: View {

    var body: some View {
        ScrollView {
            Button(action: {
                
            }) {
                Image("ob")
                    .cornerRadius(25)
                    .padding(.top,15)
                    
            }

            Button(action: {
                
            }) {
                Image("ob2")
                    .cornerRadius(25)
                    
                    
            }
            Button(action: {
                
            }) {
                Image("mb")
                    .cornerRadius(25)
                    
                    
            }
            
            
            
        }
        .navigationTitle("Discover(施工中)")
    }
        
}

struct discover_Previews: PreviewProvider {
    static var previews: some View {
        discover()
    }
}
