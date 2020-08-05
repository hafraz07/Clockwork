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
    var dayTotalTime: Double {
        Double(day.totalHours * 60 + day.totalMinutes * 60 + day.totalSeconds)
    }
    
    init(day: Day) {
        self.day = day
        let activities = day.activities.values.map {
           Double(($0.hours * 60 * 60) + ($0.minutes * 60) + $0.seconds)
        }
        self._activityTimes = State(initialValue: activities)
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
//        GeometryReader {g in
//            ZStack {
//                ForEach(Array(self.day.activities.keys), id:\.self) {activityName in
//                    DrawShape(center: CGPoint(x: g.frame(in: .global).width / 2,
//                                              y: g.frame(in: .global).height / 2),
//                              activity: self.day.activities[activityName] ?? Activity(name: "Default", hours: 20, minutes: 0, seconds: 0),
//                              dayTotal: self.dayTotalTime, index: self.index)
//                }//ForEach
//            }//ZStack
//        }//GeometryReader
//        .frame(height: 360) // since radius is 180
//        .padding(.top, 20)
//            .clipShape(Circle())
//            .shadow(radius: 8)
            PieChartView(data: self.activityTimes, title: "Test", form: ChartForm.large)
                .padding(.top, 100)
            
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
//            Spacer()
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
