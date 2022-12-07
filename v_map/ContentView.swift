//
//  ContentView.swift
//  v_map
//
//  Created by weinu on 2022/11/9.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.openURL) var openURL
    let location: Location
    
    var body: some View {
        VStack {
            ScrollView {
                Image(location.heroPicture)
                    .resizable()
                    .scaledToFit()
                
                

                HStack {
                    Text(location.name)
                        .font(.title)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .frame(width: 210, height: 90, alignment: .leading)
                    
                    Button(action: {
                            let address = location.appleMap
                            //URL encoding process
                            let addressformatted = address  .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!
                            openURL(URL(string: addressformatted)!)

                        
                    
                    }) {
                        Image(systemName: "location.fill")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("lightPurple"))
                            .cornerRadius(40)
                            //.overlay(Circle().stroke(Color.black))

                    }

                    Button(action: {
                        openURL(URL(string: "tel:0988378036")!)
                    }) {
                        Image(systemName: "phone.fill")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("lightPurple"))
                            .cornerRadius(40)
                            //.overlay(Circle().stroke(Color.black))
                            
                    }
                }
                
                //Link("帶我去", destination: URL(string: location.appleMap .addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)!)!) //換寫法會失敗，去看官方文件
                

                Text(location.description)
                    .padding(.all)
                    .font(.custom("NotoSerifTC-Regular",fixedSize: 16))
            
                
                Text(location.more)
                    .padding(.all)
                    .font(.custom("NotoSerifTC-Regular",fixedSize: 16))
                
                Text(location.address)
                    .padding(.top,15)
                    .font(.custom("NotoSerifTC-Regular",fixedSize: 16))
                    
                
                Text(location.time)
                    .padding(.bottom,25)
                    .font(.custom("NotoSerifTC-Regular",fixedSize: 16))
            
                
                
                Image(location.logo)
                    .resizable()
                    .scaledToFit()
                    .padding(.all)
                
            }
            .navigationTitle("Discover")
        }
        VStack{
            Button(action: {
                let booking = location.booking
                if booking != "" {
                    openURL(URL(string: booking)!)
                }else{
                    let booking = "tel:" + location.phone
                    openURL(URL(string: booking)!)
                }
                
            }){
                Text("立即訂位")
                    .font(.custom("NotoSerifTC-SemiBold",fixedSize: 18))
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: 300, maxHeight: 10)
                    .padding(.all)
                    .background(Color.black)
                    .cornerRadius(40) //dark模式要改UI設計 //左右padding到底 //打電話
                    .shadow(color: .white, radius: 12, x: 0, y: 0)

            }
        }
        .padding()
        .frame(alignment: .bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
