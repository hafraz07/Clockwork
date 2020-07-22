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
            if (activity.hours > 0) {
                Text(String(format: "%02d", activity.hours) + ":" + String(format: "%02d", activity.minutes))
            }
            else if (activity.minutes > 0) {
                Text(String(activity.minutes) + " minutes")
            }
            else if (activity.seconds >= 0) {
                Text(String(activity.seconds) + " seconds")
            }
        }
        .padding()
    }
}

struct HistoryRow_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRow(activity: Activity(name: "Interview", hours: 1, minutes: 59, seconds: 20))
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
