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
    var displayDate: String
    @Published var totalHours: Int = 0
    @Published var totalMinutes: Int = 0
    @Published var totalSeconds: Int = 0
    
    init() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        self.displayDate = formatter.string(from: date)
    }
    
    func calculateTotalTime(hours: Int, minutes: Int, seconds: Int) {
            totalHours += hours
            totalMinutes += minutes
            totalSeconds += seconds
        adjustTime()
    }
    
    func adjustTime() {
        if (self.totalSeconds >= 60) {
            totalMinutes += totalSeconds / 60
            totalSeconds += totalSeconds % 60
        }
        if (self.totalMinutes >= 60) {
            totalHours += totalMinutes / 60
            totalMinutes += totalMinutes % 60
        }
    }
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
