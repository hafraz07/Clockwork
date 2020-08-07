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
            if (day.totalHours > 0) {
                Text(String(day.totalHours) + "h " + String(day.totalMinutes) + "m")
            }
            else if (day.totalMinutes > 0) {
                Text(String(day.totalMinutes) + " minutes")
            }
            else if (day.totalSeconds >= 0) {
                Text(String(day.totalSeconds) + " seconds")
            }
        }
        .padding()
    }
}

struct DayRow_Previews: PreviewProvider {
    static var previews: some View {
        DayRow(day: Day())
    }
}
