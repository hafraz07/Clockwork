//
//  HistoryRow.swift
//  Clockwork
//
//  Created by Afraz Hasan on 19/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct HistoryRow: View {
    var activity: Activity
    var body: some View {
        HStack() {
            Text(activity.name)
            Spacer()
            Text(timeString(accumulatedTime: self.activity.totalTime))
//            if (activity.hours > 0) {
//                Text(String(activity.hours) + "h " + String(activity.minutes) + "m")
//            }
//            else if (activity.minutes > 0) {
//                Text(String(activity.minutes) + " minutes")
//            }
//            else if (activity.seconds >= 0) {
//                Text(String(activity.seconds) + " seconds")
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



struct HistoryRow_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRow(activity: Activity(name: "Interview", activityTime: 20))
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
