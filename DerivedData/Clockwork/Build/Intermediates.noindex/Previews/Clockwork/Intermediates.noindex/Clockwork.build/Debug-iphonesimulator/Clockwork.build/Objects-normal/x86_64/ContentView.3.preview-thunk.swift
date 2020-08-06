@_private(sourceFile: "ContentView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DisplayTime {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 105)
        AnyView(__designTimeSelection(Text(displayHours + ":" + displayMinutes + "." + displaySeconds)
            .font(.largeTitle)
            .offset(y:__designTimeInteger("#17611.[4].[3].property.[0].[0].modifier[1].arg[0].value", fallback: 300)), "#17611.[4].[3].property.[0].[0]"))
#sourceLocation()
    }
}

extension TimerButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 89)
        AnyView(__designTimeSelection(Text(__designTimeSelection(label, "#17611.[3].[2].property.[0].[0].arg[0].value"))
            .foregroundColor(.white)
            .padding(.vertical, __designTimeInteger("#17611.[3].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 20))
            .padding(.horizontal, __designTimeInteger("#17611.[3].[2].property.[0].[0].modifier[2].arg[1].value", fallback: 90))
            .background(__designTimeSelection(buttonColor, "#17611.[3].[2].property.[0].[0].modifier[3].arg[0].value"))
            .cornerRadius(__designTimeInteger("#17611.[3].[2].property.[0].[0].modifier[4].arg[0].value", fallback: 10)), "#17611.[3].[2].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 80)
        AnyView(__designTimeSelection(ContentView(activityName: __designTimeString("#17611.[2].[0].property.[0].[0].arg[0].value.[0].value", fallback: "Interview"), day: __designTimeSelection(Day(), "#17611.[2].[0].property.[0].[0].arg[1].value")), "#17611.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 31)
        AnyView(__designTimeSelection(VStack {
            __designTimeSelection(Text(__designTimeSelection(activityName, "#17611.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value"))
                .font(.headline), "#17611.[1].[5].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(DisplayTime(displayHours: __designTimeSelection(String(format: __designTimeString("#17611.[1].[5].property.[0].[0].arg[0].value.[1].arg[0].value.arg[0].value.[0].value", fallback: "%02d"), __designTimeSelection(self.stopWatch.hours, "#17611.[1].[5].property.[0].[0].arg[0].value.[1].arg[0].value.arg[1].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[1].arg[0].value"), displayMinutes: __designTimeSelection(String(format: __designTimeString("#17611.[1].[5].property.[0].[0].arg[0].value.[1].arg[1].value.arg[0].value.[0].value", fallback: "%02d"), __designTimeSelection(self.stopWatch.minutes, "#17611.[1].[5].property.[0].[0].arg[0].value.[1].arg[1].value.arg[1].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[1].arg[1].value"), displaySeconds: __designTimeSelection(String(__designTimeSelection(self.stopWatch.secondsElapsed, "#17611.[1].[5].property.[0].[0].arg[0].value.[1].arg[2].value.arg[0].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[1].arg[2].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[1]")
            
            if (stopWatch.mode == .stopped) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.start(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Start"), buttonColor: __designTimeSelection(Color.blue, "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[1].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].modifier[0].arg[0].value", fallback: 400)), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0]")
            }
            else if (stopWatch.mode == .running) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.pause(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Pause"), buttonColor: __designTimeSelection(Color.blue, "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0].arg[1].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].modifier[0].arg[0].value", fallback: 400)), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0]")
                    __designTimeSelection(Button(action: {
                        __designTimeSelection(self.addActivity(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[0]")
                        __designTimeSelection(self.stopWatch.stop(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[1]")
                        __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[2]")
                    }) {
                        __designTimeSelection(TimerButton(label: __designTimeString("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: __designTimeSelection(Color.red, "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0].arg[1].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0]")
                    }
                    .offset(y:__designTimeInteger("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].modifier[0].arg[0].value", fallback: 200))
                    .padding(.top, __designTimeInteger("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].modifier[1].arg[1].value", fallback: 30)), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1]")
            }
            else if (stopWatch.mode == .paused) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.start(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Resume"), buttonColor: __designTimeSelection(Color.blue, "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0].arg[1].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].modifier[0].arg[0].value", fallback: 400)), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0]")
                __designTimeSelection(Button(action: {
                    __designTimeSelection(self.addActivity(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[0]")
                    __designTimeSelection(self.stopWatch.stop(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[1]")
                    __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[2]")
                }) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: __designTimeSelection(Color.red, "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0].arg[1].value")), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].modifier[0].arg[0].value", fallback: 200))
                .padding(.top, __designTimeInteger("#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].modifier[1].arg[1].value", fallback: 30)), "#17611.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1]")
            }
            __designTimeSelection(Spacer(), "#17611.[1].[5].property.[0].[0].arg[0].value.[3]")
        }, "#17611.[1].[5].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: addActivity()) private func __preview__addActivity() {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 18)
        if let activity = self.day.activities[self.activityName] {
            activity.hours += self.stopWatch.hours
            activity.minutes += self.stopWatch.minutes
            activity.seconds += self.stopWatch.secondsElapsed
            __designTimeSelection(activity.adjustTime(), "#17611.[1].[4].[0].[0].[3]")
        }
        else {
            self.day.activities[self.activityName] = Activity(name: self.activityName, hours: self.stopWatch.hours, minutes: self.stopWatch.minutes, seconds: self.stopWatch.secondsElapsed)
        }
        __designTimeSelection(self.day.calculateTotalTime(hours: __designTimeSelection(self.stopWatch.hours, "#17611.[1].[4].[1].modifier[0].arg[0].value"), minutes: __designTimeSelection(self.stopWatch.minutes, "#17611.[1].[4].[1].modifier[0].arg[1].value"), seconds: __designTimeSelection(self.stopWatch.secondsElapsed, "#17611.[1].[4].[1].modifier[0].arg[2].value")), "#17611.[1].[4].[1]")
#sourceLocation()
    }
}

typealias ContentView = Clockwork.ContentView
typealias ContentView_Previews = Clockwork.ContentView_Previews
typealias TimerButton = Clockwork.TimerButton
typealias DisplayTime = Clockwork.DisplayTime