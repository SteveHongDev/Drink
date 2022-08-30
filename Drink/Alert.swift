//
//  Alert.swift
//  Drink
//
//  Created by 홍성범 on 2022/08/30.
//

import Foundation

struct Alert: Codable {
    var id: String = UUID().uuidString
    let date: Date
    var isOn: Bool
    
    var time: String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm"
        return timeFormatter.string(from: date)
    }
    
    var AMPM: String {
        let AMPMFormatter = DateFormatter()
        AMPMFormatter.dateFormat = "a"
        AMPMFormatter.locale = Locale(identifier: "ko")
        return AMPMFormatter.string(from: date)
    }
}
