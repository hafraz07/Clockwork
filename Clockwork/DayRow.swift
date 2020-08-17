//
//  DayRow.swift
//  Clockwork
//
//  Created by Afraz Hasan on 23/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct DayRow: View {
    @ObservedObject var day: Day
    var body: some View {
        HStack() {
            Text(day.displayDate)
            Spacer()
            Text(timeString(accumulatedTime: day.totalTime))
//            if (day.totalHours > 0) {
//                Text(String(day.totalHours) + "h " + String(day.totalMinutes) + "m")
//            }
//            else if (day.totalMinutes > 0) {
//                Text(String(day.totalMinutes) + " minutes")
//            }
//            else if (day.totalSeconds >= 0) {
//                Text(String(day.totalSeconds) + " seconds")
//            }
        }
        .padding()
    }
    
    private func timeString(accumulatedTime: TimeInterval) -> String {
        let hours = Int(accumulatedTime) / 3600
        let minutes = Int(accumulatedTime) / 60 % 60
        let seconds = Int(accumulatedTime) % 60
        if (hours > 0) {
            return String("\(hours)h \(minutes)m")
        }
        else if (minutes > 0) {
            return String("\(minutes) minutes")
        }
        else if (seconds >= 0) {
            return String("\(seconds) seconds")
        }
            return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
}

struct DayRow_Previews: PreviewProvider {
    static var previews: some View {
        DayRow(day: Day())
    }
}
