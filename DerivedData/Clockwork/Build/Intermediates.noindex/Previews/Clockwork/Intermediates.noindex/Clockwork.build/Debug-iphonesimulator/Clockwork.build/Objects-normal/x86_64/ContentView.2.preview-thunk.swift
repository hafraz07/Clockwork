@_private(sourceFile: "ContentView.swift") import Clockwork
import Combine
import SwiftUI
import SwiftUI

extension TimerButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 107)
        AnyView(Text(label)
            .foregroundColor(.white)
            .padding(.vertical, __designTimeInteger("#11422.[4].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 20))
            .padding(.horizontal, __designTimeInteger("#11422.[4].[2].property.[0].[0].modifier[2].arg[1].value", fallback: 90))
            .background(buttonColor)
            .cornerRadius(__designTimeInteger("#11422.[4].[2].property.[0].[0].modifier[4].arg[0].value", fallback: 10)))
#sourceLocation()
    }
}

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 98)
        AnyView(ContentView(activityName: __designTimeString("#11422.[3].[0].property.[0].[0].arg[0].value.[0].value", fallback: "Interview"), day: Day()))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 36)
        AnyView(VStack {
            Text(activityName)
                .font(.headline)
            
            Text(timeString(accumulatedTime: self.stopWatch.totalRunningTime))
                .font(.largeTitle)
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 190))
            
            
            if (stopWatch.mode == .stopped) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Start"), buttonColor: Color.blue)
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[0].[0].modifier[0].arg[0].value", fallback: 240))
            }
            else if (stopWatch.mode == .running) {
                Button(action: {self.stopWatch.pause()}) {
                    TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Pause"), buttonColor: Color.blue)
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[0].modifier[0].arg[0].value", fallback: 240))
                Button(action: {
                    self.addActivity()
                    self.stopWatch.stop()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: Color.red)
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].modifier[0].arg[0].value", fallback: 220))
                .padding(.top, __designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].modifier[1].arg[1].value", fallback: 30))
            }
            else if (stopWatch.mode == .paused) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Resume"), buttonColor: Color.blue)
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[0].modifier[0].arg[0].value", fallback: 240))
                Button(action: {
                    self.addActivity()
                    self.stopWatch.stop()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: Color.red)
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].modifier[0].arg[0].value", fallback: 220))
                .padding(.top, __designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].modifier[1].arg[1].value", fallback: 30))
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
           })
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: addActivity()) private func __preview__addActivity() {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 26)
        if let activity = self.day.activities[self.activityName] {
            activity.totalTime += self.stopWatch.totalRunningTime
        }
        else {
            self.day.activities[self.activityName] = Activity(name: self.activityName, activityTime: self.stopWatch.totalRunningTime)
        }
        self.day.calculateTotalTime(timeAccumulated: self.stopWatch.totalRunningTime)
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: timeString(accumulatedTime:)) private func __preview__timeString(accumulatedTime: TimeInterval) -> String {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 19)
            let hours = Int(accumulatedTime) / 3600
            let minutes = Int(accumulatedTime) / 60 % 60
            let seconds = Int(accumulatedTime) % 60
            return String(format:__designTimeString("#11422.[2].[4].[3].arg[0].value.[0].value", fallback: "%02i:%02i:%02i"), hours, minutes, seconds)
#sourceLocation()
    }
}

typealias ContentView = Clockwork.ContentView
typealias ContentView_Previews = Clockwork.ContentView_Previews
typealias TimerButton = Clockwork.TimerButton