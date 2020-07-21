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
}



class Activity: ObservableObject, Identifiable {
    var name: String = "Placeholder"
    var hours: Int
    var minutes: Int
    var seconds: Int
    var id: Int
    
    init(hours: Int, minutes: Int, seconds: Int) {
        self.hours = hours
        self.minutes = minutes
        self.seconds = seconds
        self.id = 0
    }
}
