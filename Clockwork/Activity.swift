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
    @Published var days: [String:Day] = [:]
}

class Day: ObservableObject, Identifiable {
    let uuid = UUID().uuidString
    @Published var activities: [String:Activity] = [:]
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
    @Published var hours: Int
    @Published var minutes: Int
    @Published var seconds: Int
    let uuid = UUID().uuidString
    var slideColor = Color.white
    
    
    init(name: String, hours: Int, minutes: Int, seconds: Int) {
        self.name = name
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
        self.slideColor = generateRandomColor()
    }
    
    func adjustTime() {
        if (self.seconds >= 60) {
            minutes += seconds / 60
            seconds += seconds % 60
        }
        if (self.minutes >= 60) {
            hours += minutes / 60
            minutes += minutes % 60
        }
    }
    
    func generateRandomColor() -> Color {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        
        return Color(randomColor)
    }
    
}
