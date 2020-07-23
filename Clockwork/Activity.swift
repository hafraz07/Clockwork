//
//  Activity.swift
//  Clockwork
//
//  Created by Afraz Hasan on 21/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import Foundation
import SwiftUI

class UserData: ObservableObject {
    @Published var activities: [Activity] = []
//    @Published var days = Dictionary<String, [Activity]>()
    @Published var days: [Day] = []
}

class Day: ObservableObject, Identifiable {
    let uuid = UUID().uuidString
    @Published var activities: [Activity] = []
    var date: String = "07/10/99"
    var totalHours: Int = 5
    var totalMinutes: Int = 29
    var totalSeconds: Int = 0
}



class Activity: ObservableObject, Identifiable {
    var name: String
    var hours: Int
    var minutes: Int
    var seconds: Int
    static var id: Int = -1
    
    
    init(name: String, hours: Int, minutes: Int, seconds: Int) {
        self.name = name
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
        Activity.self.id += 1
    }
}
