//
//  location.swift
//  v_map
//
//  Created by weinu on 2022/11/10.
//

import Foundation

struct Location: Decodable, Identifiable {
    //建立一個資料格式data structure，裡面記錄各欄位的屬性property
    //Identifiable ?? 
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let appleMap: String
    let heroPicture: String
    let logo: String
    let booking: String
    let advisory: String
    let phone: String
    let address: String
    let time: String
    
    static let example = Location(id: 1, name: "Great Smokey Mountains", country: "USA",
        description: "沈靜的巷弄內，總有一處遠離喧囂、另人驚豔的地方，這就是台南的真實樣貌。隱藏在老宅中的bar INFU，沒有高調醒目的招牌，僅憑藉著一道古樸的紅鐵門來辨別店家的所在之處。步入Bar INFU，昏暗且富有情調的燈光、水晶吊燈、舊木橫樑以及個人私心最愛的紅絲絨掛簾，讓人在剎那間跌入時光隧道，仿佛夢回上海1930。", more: "Bar INFU 源於老闆Benjamin擅長的infuse(浸漬手法)而得名。選用單一食材浸泡適合的基酒，經過不斷的嘗試調出一杯杯個性獨特，卻屢屢讓人驚艷的忘憂水！",
                                  latitude: 35.6532, longitude: -83.5070, appleMap: "http://maps.apple.com/?address=台南市中西區忠義路二段84巷63號",heroPicture: "smokies", logo: "smokies", booking: "https://inline.app/booking/-Lth3ZZkOTMw4uVQJr4T:inline-live-1/-Lth3Zd27Kqo15f21gYq?language=zh-tw",
                                  advisory: "Beware of the bears!", phone: "06-223-5639", address: "台南市中西區中山路23巷1號", time: "19:00~01:00 週五18:00~01:00 週日一公休")
}
