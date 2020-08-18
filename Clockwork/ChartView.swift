//
//  ChartView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 26/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct ChartView: View {
    @ObservedObject var day: Day
    @State var activityTimes: [Double] = []
    @State var activities: [Activity] = []
    
    init(day: Day) {
        self.day = day
        let activities = Array(day.activities.values)
        let activityTimes = day.activities.values.map {
            $0.totalTime
        }
        self._activityTimes = State(initialValue: activityTimes)
        self._activities = State(initialValue: activities)
    }
    
    func getSlideColor(activityName: String)-> Color {
        let activity = self.day.activities[activityName] ?? Activity(name: "Default", activityTime: 20)
        return activity.slideColor
    }
    
    func getDisplayTime(activityName: String)-> String {
        let activity = self.day.activities[activityName] ?? Activity(name: "Default", activityTime: 20)
        let hours = Int(activity.totalTime) / 3600
        let minutes = Int(activity.totalTime) / 60 % 60
        let seconds = Int(activity.totalTime) % 60
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
        
    var body: some View {
        ScrollView(showsIndicators: false) {
            PieChartView(data: PieData(data: self.activityTimes, activities: self.activities), title: self.day.displayDate, form: ChartForm.large)
                .padding(.top, 120)
            
            VStack {
                ForEach(Array(self.day.activities.keys), id:\.self) {activityName in
                    HStack {
                        Text(activityName)
                            .frame(width: 100)
                        
                        GeometryReader {g in
                            HStack {
                                Spacer(minLength: 0)
                                Rectangle()
                                    .fill(self.getSlideColor(activityName: activityName))
                                    .frame(width: 20, height: 10)
                                
                                Text(self.getDisplayTime(activityName: activityName))
                                    .fontWeight(.bold)
                                    .padding([.leading, .trailing], 10)
                            } //Inner HStack
                        } //GeometryReader
                    } //Outer HStack
                    .padding(.top, 18)
                } //ForEach
        } //VStack
                .padding(.top, 70)
            Spacer()
        } //ScrollView
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(day: Day())
    }
}
