//
//  ContentView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 19/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI
import Combine

struct ContentView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @ObservedObject var stopWatch = StopwatchManager();
    var activityName: String
    @ObservedObject var day: Day
    
    func timeString(accumulatedTime: TimeInterval) -> String {
            let hours = Int(accumulatedTime) / 3600
            let minutes = Int(accumulatedTime) / 60 % 60
            let seconds = Int(accumulatedTime) % 60
            return String(format:"%02i:%02i:%02i", hours, minutes, seconds)
    }
    
    func addActivity() {
        if let activity = self.day.activities[self.activityName] {
            activity.totalTime += self.stopWatch.totalRunningTime
        }
        else {
            self.day.activities[self.activityName] = Activity(name: self.activityName, activityTime: self.stopWatch.totalRunningTime)
        }
        self.day.calculateTotalTime(timeAccumulated: self.stopWatch.totalRunningTime)
    }
    
    var body: some View {
        VStack {
            Text(activityName)
                .font(.headline)
            
            Text(timeString(accumulatedTime: self.stopWatch.totalRunningTime))
                .font(.largeTitle)
                .offset(y:190)
            
            
            if (stopWatch.mode == .stopped) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: "Start", buttonColor: Color.blue)
                }
                .offset(y:240)
            }
            else if (stopWatch.mode == .running) {
                Button(action: {self.stopWatch.pause()}) {
                    TimerButton(label: "Pause", buttonColor: Color.blue)
                }
                .offset(y:240)
                Button(action: {
                    self.addActivity()
                    self.stopWatch.stop()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    TimerButton(label: "Stop", buttonColor: Color.red)
                }
                .offset(y:220)
                .padding(.top, 30)
            }
            else if (stopWatch.mode == .paused) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: "Resume", buttonColor: Color.blue)
                }
                .offset(y:240)
                Button(action: {
                    self.addActivity()
                    self.stopWatch.stop()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    TimerButton(label: "Stop", buttonColor: Color.red)
                }
                .offset(y:220)
                .padding(.top, 30)
            }
            Spacer()
        }// VStack
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                if self.stopWatch.mode != .paused {
                    self.stopWatch.suspend()
                }
           }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
                if self.stopWatch.mode != .paused {
                    self.stopWatch.start()
                }
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


