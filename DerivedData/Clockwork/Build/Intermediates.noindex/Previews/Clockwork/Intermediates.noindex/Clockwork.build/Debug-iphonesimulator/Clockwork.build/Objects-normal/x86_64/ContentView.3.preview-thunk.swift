@_private(sourceFile: "ContentView.swift") import Clockwork
import Combine
import SwiftUI
import SwiftUI

extension TimerButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 107)
        AnyView(__designTimeSelection(Text(__designTimeSelection(label, "#11422.[4].[2].property.[0].[0].arg[0].value"))
            .foregroundColor(.white)
            .padding(.vertical, __designTimeInteger("#11422.[4].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 20))
            .padding(.horizontal, __designTimeInteger("#11422.[4].[2].property.[0].[0].modifier[2].arg[1].value", fallback: 90))
            .background(__designTimeSelection(buttonColor, "#11422.[4].[2].property.[0].[0].modifier[3].arg[0].value"))
            .cornerRadius(__designTimeInteger("#11422.[4].[2].property.[0].[0].modifier[4].arg[0].value", fallback: 10)), "#11422.[4].[2].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 98)
        AnyView(__designTimeSelection(ContentView(activityName: __designTimeString("#11422.[3].[0].property.[0].[0].arg[0].value.[0].value", fallback: "Interview"), day: __designTimeSelection(Day(), "#11422.[3].[0].property.[0].[0].arg[1].value")), "#11422.[3].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 36)
        AnyView(__designTimeSelection(VStack {
            __designTimeSelection(Text(__designTimeSelection(activityName, "#11422.[2].[6].property.[0].[0].arg[0].value.[0].arg[0].value"))
                .font(.headline), "#11422.[2].[6].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(Text(__designTimeSelection(timeString(accumulatedTime: __designTimeSelection(self.stopWatch.totalRunningTime, "#11422.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value.arg[0].value")), "#11422.[2].[6].property.[0].[0].arg[0].value.[1].arg[0].value"))
                .font(.largeTitle)
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 190)), "#11422.[2].[6].property.[0].[0].arg[0].value.[1]")
            
            
            if (stopWatch.mode == .stopped) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.start(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[0].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Start"), buttonColor: __designTimeSelection(Color.blue, "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[1].value")), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[0].[0].modifier[0].arg[0].value", fallback: 240)), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[0].[0]")
            }
            else if (stopWatch.mode == .running) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.pause(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Pause"), buttonColor: __designTimeSelection(Color.blue, "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0].arg[1].value")), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[0].modifier[0].arg[0].value", fallback: 240)), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[0]")
                __designTimeSelection(Button(action: {
                    __designTimeSelection(self.addActivity(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[0]")
                    __designTimeSelection(self.stopWatch.stop(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[1]")
                    __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[2]")
                }) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: __designTimeSelection(Color.red, "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0].arg[1].value")), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].modifier[0].arg[0].value", fallback: 220))
                .padding(.top, __designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1].modifier[1].arg[1].value", fallback: 30)), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[1].[1]")
            }
            else if (stopWatch.mode == .paused) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.start(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Resume"), buttonColor: __designTimeSelection(Color.blue, "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0].arg[1].value")), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[0].modifier[0].arg[0].value", fallback: 240)), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[0]")
                __designTimeSelection(Button(action: {
                    __designTimeSelection(self.addActivity(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[0]")
                    __designTimeSelection(self.stopWatch.stop(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[1]")
                    __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[2]")
                }) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: __designTimeSelection(Color.red, "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0].arg[1].value")), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].modifier[0].arg[0].value", fallback: 220))
                .padding(.top, __designTimeInteger("#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1].modifier[1].arg[1].value", fallback: 30)), "#11422.[2].[6].property.[0].[0].arg[0].value.[2].[2].[1]")
            }
            __designTimeSelection(Spacer(), "#11422.[2].[6].property.[0].[0].arg[0].value.[3]")
        }// VStack
        .onReceive(__designTimeSelection(NotificationCenter.default.publisher(for: __designTimeSelection(UIApplication.willResignActiveNotification, "#11422.[2].[6].property.[0].[0].modifier[0].arg[0].value.modifier[0].arg[0].value")), "#11422.[2].[6].property.[0].[0].modifier[0].arg[0].value")) { _ in
                if self.stopWatch.mode != .paused {
                    __designTimeSelection(self.stopWatch.suspend(), "#11422.[2].[6].property.[0].[0].modifier[0].arg[1].value.[0].[0].[0]")
                }
           }
        .onReceive(__designTimeSelection(NotificationCenter.default.publisher(for: __designTimeSelection(UIApplication.willEnterForegroundNotification, "#11422.[2].[6].property.[0].[0].modifier[1].arg[0].value.modifier[0].arg[0].value")), "#11422.[2].[6].property.[0].[0].modifier[1].arg[0].value")) { _ in
                if self.stopWatch.mode != .paused {
                    __designTimeSelection(self.stopWatch.start(), "#11422.[2].[6].property.[0].[0].modifier[1].arg[1].value.[0].[0].[0]")
                }
           }, "#11422.[2].[6].property.[0].[0]"))
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
        __designTimeSelection(self.day.calculateTotalTime(timeAccumulated: __designTimeSelection(self.stopWatch.totalRunningTime, "#11422.[2].[5].[1].modifier[0].arg[0].value")), "#11422.[2].[5].[1]")
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: timeString(accumulatedTime:)) private func __preview__timeString(accumulatedTime: TimeInterval) -> String {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 19)
            let hours = Int(accumulatedTime) / 3600
            let minutes = Int(accumulatedTime) / 60 % 60
            let seconds = Int(accumulatedTime) % 60
            return __designTimeSelection(String(format:__designTimeString("#11422.[2].[4].[3].arg[0].value.[0].value", fallback: "%02i:%02i:%02i"), __designTimeSelection(hours, "#11422.[2].[4].[3].arg[1].value"), __designTimeSelection(minutes, "#11422.[2].[4].[3].arg[2].value"), __designTimeSelection(seconds, "#11422.[2].[4].[3].arg[3].value")), "#11422.[2].[4].[3]")
#sourceLocation()
    }
}

typealias ContentView = Clockwork.ContentView
typealias ContentView_Previews = Clockwork.ContentView_Previews
typealias TimerButton = Clockwork.TimerButton