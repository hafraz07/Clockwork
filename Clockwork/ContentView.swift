//
//  ContentView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 19/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var stopWatch = StopwatchManager();
//    @EnvironmentObject var userData: UserData
    var activityName: String
    @ObservedObject var day: Day
    
    func addActivity() {
        self.day.activities.append(Activity(name: self.activityName, hours: self.stopWatch.hours, minutes: self.stopWatch.minutes, seconds: self.stopWatch.secondsElapsed))
        self.day.calculateTotalTime(hours: self.stopWatch.hours, minutes: self.stopWatch.minutes, seconds: self.stopWatch.secondsElapsed)
    }
    
    var body: some View {
        VStack {
            Text(activityName)
                .font(.headline)
            
            DisplayTime(displayHours: String(format: "%02d", self.stopWatch.hours), displayMinutes: String(format: "%02d", self.stopWatch.minutes), displaySeconds: String(self.stopWatch.secondsElapsed))
            
            if (stopWatch.mode == .stopped) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: "Start", buttonColor: Color.blue)
                }
                .offset(y:400)
            }
            else if (stopWatch.mode == .running) {
                Button(action: {self.stopWatch.pause()}) {
                    TimerButton(label: "Pause", buttonColor: Color.blue)
                }
                .offset(y:400)
                    Button(action: {
                        self.addActivity()
                        self.stopWatch.stop()
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        TimerButton(label: "Stop", buttonColor: Color.red)
                    }
                    .offset(y:200)
                    .padding(.top, 30)
            }
            else if (stopWatch.mode == .paused) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: "Resume", buttonColor: Color.blue)
                }
                .offset(y:400)
                Button(action: {
                    self.addActivity()
                    self.stopWatch.stop()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    TimerButton(label: "Stop", buttonColor: Color.red)
                }
                .offset(y:200)
                .padding(.top, 30)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(activityName: "Interview", day: Day())
    }
}

struct TimerButton: View {
    let label: String
    let buttonColor: Color
    
    var body: some View {
        Text(label)
            .foregroundColor(.white)
            .padding(.vertical, 20)
            .padding(.horizontal, 90)
            .background(buttonColor)
            .cornerRadius(10)
    }
}



struct DisplayTime: View {
    let displayHours: String
    let displayMinutes: String
    let displaySeconds: String
    var body: some View {
        Text(displayHours + ":" + displayMinutes + "." + displaySeconds)
            .font(.largeTitle)
            .offset(y:300)
    }
}
