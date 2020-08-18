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
    @Published var totalTime: TimeInterval = 0
    
    init() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        self.displayDate = formatter.string(from: date)
    }
    
    func calculateTotalTime(timeAccumulated: TimeInterval) {
        totalTime += timeAccumulated
    }
}



class Activity: ObservableObject, Identifiable {
    var name: String
    @Published var totalTime: TimeInterval = 0
    let uuid = UUID().uuidString
    var slideColor = Color.white
    
    init(name: String, activityTime: TimeInterval) {
        self.name = name
        self.totalTime = activityTime
        self.slideColor = generateRandomColor()
    }
        
    func generateRandomColor() -> Color {
        let redValue = CGFloat.random(in: 0...1)
        let greenValue = CGFloat.random(in: 0...1)
        let blueValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
        return Color(randomColor)
    }
}
