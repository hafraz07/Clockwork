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
    @EnvironmentObject var userData: UserData
    var body: some View {
        VStack {
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
                        self.userData.activities.append(Activity(hours: self.stopWatch.hours, minutes: self.stopWatch.minutes, seconds: self.stopWatch.secondsElapsed))
                        self.stopWatch.stop()
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        TimerButton(label: "Stop", buttonColor: Color.red)
                    }
                    .offset(y:400)
                    .padding(.top, 30)
            }
            else if (stopWatch.mode == .paused) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: "Resume", buttonColor: Color.blue)
                }
                .offset(y:400)
                Button(action: {
                    self.userData.activities.append(Activity(hours: self.stopWatch.hours, minutes: self.stopWatch.minutes, seconds: self.stopWatch.secondsElapsed))
                    self.stopWatch.stop()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    TimerButton(label: "Stop", buttonColor: Color.red)
                }
                .offset(y:400)
                .padding(.top, 30)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        .environmentObject(UserData())
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
