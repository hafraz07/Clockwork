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
    @State var actityNames: [String] = []
    var dayTotalTime: Double {
        Double(day.totalHours * 60 + day.totalMinutes * 60 + day.totalSeconds)
    }
    
    init(day: Day) {
        self.day = day
        let activityNames = Array(day.activities.keys)
        let activities = day.activities.values.map {
           Double(($0.hours * 60 * 60) + ($0.minutes * 60) + $0.seconds)
        }
        self._activityTimes = State(initialValue: activities)
        self._actityNames = State(initialValue: activityNames)
    }
    
    func getSlideColor(activityName: String)-> Color {
        let activity = self.day.activities[activityName] ?? Activity(name: "Default", hours: 20, minutes: 0, seconds: 0)
        return activity.slideColor
    }
    
    func getDisplayTime(activityName: String)-> String {
        let activity = self.day.activities[activityName] ?? Activity(name: "Default", hours: 20, minutes: 0, seconds: 0)
        if (activity.hours > 0) {
            return String(activity.hours) + "h " + String(activity.minutes) + "m"
        }
        else if (activity.minutes > 0) {
            return String(activity.minutes) + " minutes"
        }
        else if (activity.seconds >= 0) {
            return String(activity.seconds) + " seconds"
        }
        return "Default"
    }
        
    var body: some View {
        ScrollView(showsIndicators: false) {
            PieChartView(data: PieData(data: self.activityTimes), title: self.day.displayDate, form: ChartForm.large)
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

struct DrawShape: View {
    var center: CGPoint
    var activity: Activity
    var activityTime: Double {
        Double(activity.hours * 60 + activity.minutes * 60 + activity.seconds)
    }
    var dayTotal: Double
    var index: Int
    static var currentAngle: Double = -90
    
    
    var body: some View {
        Path {path in
            path.move(to: self.center)

            path.addArc(center: self.center,
                        radius: 180,
                        startAngle: .degrees(self.from()),
                        endAngle: .degrees(self.to()),
                        clockwise: false)
        }
        .fill(self.activity.slideColor)
        
    }
    
    func from()->Double {
        return Double(DrawShape.currentAngle)
    }
    
    func to()->Double {
        var endAngle: Double = 0
        
        let angle = Double(activityTime / dayTotal) * 360
        DrawShape.currentAngle += angle
        endAngle = DrawShape.currentAngle
        
        return endAngle
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(day: Day())
    }
}
