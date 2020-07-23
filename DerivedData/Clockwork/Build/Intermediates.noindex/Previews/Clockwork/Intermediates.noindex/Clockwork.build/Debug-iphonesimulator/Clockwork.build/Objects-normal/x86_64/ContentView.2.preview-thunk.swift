@_private(sourceFile: "ContentView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DisplayTime {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 98)
        AnyView(Text(displayHours + ":" + displayMinutes + "." + displaySeconds)
            .font(.largeTitle)
            .offset(y:__designTimeInteger("#5822.[4].[3].property.[0].[0].modifier[1].arg[0].value", fallback: 300)))
#sourceLocation()
    }
}

extension TimerButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 82)
        AnyView(Text(label)
            .foregroundColor(.white)
            .padding(.vertical, __designTimeInteger("#5822.[3].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 20))
            .padding(.horizontal, __designTimeInteger("#5822.[3].[2].property.[0].[0].modifier[2].arg[1].value", fallback: 90))
            .background(buttonColor)
            .cornerRadius(__designTimeInteger("#5822.[3].[2].property.[0].[0].modifier[4].arg[0].value", fallback: 10)))
#sourceLocation()
    }
}

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 72)
        AnyView(ContentView(activityName: __designTimeString("#5822.[2].[0].property.[0].[0].arg[0].value.[0].value", fallback: "Interview"), day: Day())
        .environmentObject(UserData()))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 23)
        AnyView(VStack {
            Text(activityName)
                .font(.headline)
            
            DisplayTime(displayHours: String(format: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[0].value.arg[0].value.[0].value", fallback: "%02d"), self.stopWatch.hours), displayMinutes: String(format: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[1].value.arg[0].value.[0].value", fallback: "%02d"), self.stopWatch.minutes), displaySeconds: String(self.stopWatch.secondsElapsed))
            
            if (stopWatch.mode == .stopped) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Start"), buttonColor: Color.blue)
                }
                .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].modifier[0].arg[0].value", fallback: 400))
            }
            else if (stopWatch.mode == .running) {
                Button(action: {self.stopWatch.pause()}) {
                    TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Pause"), buttonColor: Color.blue)
                }
                .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].modifier[0].arg[0].value", fallback: 400))
                    Button(action: {
                        self.addActivity()
                        self.stopWatch.stop()
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: Color.red)
                    }
                    .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].modifier[0].arg[0].value", fallback: 200))
                    .padding(.top, __designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].modifier[1].arg[1].value", fallback: 30))
            }
            else if (stopWatch.mode == .paused) {
                Button(action: {self.stopWatch.start()}) {
                    TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Resume"), buttonColor: Color.blue)
                }
                .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].modifier[0].arg[0].value", fallback: 400))
                Button(action: {
                    self.addActivity()
                    self.stopWatch.stop()
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: Color.red)
                }
                .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].modifier[0].arg[0].value", fallback: 200))
                .padding(.top, __designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].modifier[1].arg[1].value", fallback: 30))
            }
            Spacer()
        })
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: addActivity()) private func __preview__addActivity() {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 19)
        self.day.activities.append(Activity(name: self.activityName, hours: self.stopWatch.hours, minutes: self.stopWatch.minutes, seconds: self.stopWatch.secondsElapsed))
#sourceLocation()
    }
}

typealias ContentView = Clockwork.ContentView
typealias ContentView_Previews = Clockwork.ContentView_Previews
typealias TimerButton = Clockwork.TimerButton
typealias DisplayTime = Clockwork.DisplayTime