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
    var dayTotalTime: Double {
        Double(day.totalHours * 60 + day.totalMinutes * 60 + day.totalSeconds)
    }
    
    func getSlideColor(activityName: String)-> Color {
        let activity = self.day.activities[activityName] ?? Activity(name: "Default", hours: 20, minutes: 0, seconds: 0)
        return activity.slideColor
    }
    
    var body: some View {
        VStack {
        GeometryReader {g in
            ZStack {
                ForEach(Array(self.day.activities.keys), id:\.self) {activityName in
                    DrawShape(center: CGPoint(x: g.frame(in: .global).width / 2,
                                              y: g.frame(in: .global).height / 2),
                              activity: self.day.activities[activityName] ?? Activity(name: "Default", hours: 20, minutes: 0, seconds: 0),
                              dayTotal: self.dayTotalTime)
                }//ForEach
            }//ZStack
        }//GeometryReader
        .frame(height: 360) // since radius is 180
        .padding(.top, 20)
        
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
                                    .frame(height: 10)
                                
    //                            Text(String(self.day.activities[activityName]?.hours) + "h" + String(self.day.activities[activityName]?.minutes) + "m")
    //                                .padding(.leading, 10)
                                Text("1h20m")
                                    .padding(.leading, 10)
                            } //Inner HStack
                        } //GeometryReader
                    } //Outer HStack
                    .padding(.top, 18)
                } //ForEach
        } //VStack
        .padding()
        Spacer()
        }
    }
}

struct DrawShape: View {
    var center: CGPoint
    var activity: Activity
    var activityTime: Double {
        Double(activity.hours * 60 + activity.minutes * 60 + activity.seconds)
    }
    var dayTotal: Double
    static var index = 0
        
    var body: some View {
        Path {path in
            path.move(to: self.center)

            path.addArc(center: self.center,
                        radius: 180,
                        startAngle: .init(degrees: self.from()),
                        endAngle: .init(degrees: self.to()),
                        clockwise: false)
        }
        .fill(self.activity.slideColor)
    }
    
    func from()->Double {
        if DrawShape.index == 0 { return 0 }
        else {
            //converting percentage to angle
            var temp: Double = 0
            
            for i in 0...DrawShape.index - 1 {
//                temp += Double(data[i].percent / 100) * 360
                temp += Double(activityTime / dayTotal) * 360
            }
            return temp
        }
    }
    
    func to()->Double {
        var temp: Double = 0
        
        //because we need the current degree
        for i in 0...DrawShape.index {
//            temp += Double(data[i].percent / 100) * 360
            temp += Double(activityTime / dayTotal) * 360
        }
        return temp
    }
}

struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView(day: Day())
    }
}
