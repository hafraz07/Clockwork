@_private(sourceFile: "ContentView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DisplayTime {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 100)
        AnyView(__designTimeSelection(Text(displayHours + ":" + displayMinutes + "." + displaySeconds)
            .font(.largeTitle)
            .offset(y:__designTimeInteger("#5822.[4].[3].property.[0].[0].modifier[1].arg[0].value", fallback: 300)), "#5822.[4].[3].property.[0].[0]"))
#sourceLocation()
    }
}

extension TimerButton {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 84)
        AnyView(__designTimeSelection(Text(__designTimeSelection(label, "#5822.[3].[2].property.[0].[0].arg[0].value"))
            .foregroundColor(.white)
            .padding(.vertical, __designTimeInteger("#5822.[3].[2].property.[0].[0].modifier[1].arg[1].value", fallback: 20))
            .padding(.horizontal, __designTimeInteger("#5822.[3].[2].property.[0].[0].modifier[2].arg[1].value", fallback: 90))
            .background(__designTimeSelection(buttonColor, "#5822.[3].[2].property.[0].[0].modifier[3].arg[0].value"))
            .cornerRadius(__designTimeInteger("#5822.[3].[2].property.[0].[0].modifier[4].arg[0].value", fallback: 10)), "#5822.[3].[2].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 74)
        AnyView(__designTimeSelection(ContentView(activityName: __designTimeString("#5822.[2].[0].property.[0].[0].arg[0].value.[0].value", fallback: "Interview"))
        .environmentObject(__designTimeSelection(UserData(), "#5822.[2].[0].property.[0].[0].modifier[0].arg[0].value")), "#5822.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 22)
        AnyView(__designTimeSelection(VStack {
            __designTimeSelection(Text(__designTimeSelection(activityName, "#5822.[1].[5].property.[0].[0].arg[0].value.[0].arg[0].value"))
                .font(.headline), "#5822.[1].[5].property.[0].[0].arg[0].value.[0]")
            
            __designTimeSelection(DisplayTime(displayHours: __designTimeSelection(String(format: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[0].value.arg[0].value.[0].value", fallback: "%02d"), __designTimeSelection(self.stopWatch.hours, "#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[0].value.arg[1].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[0].value"), displayMinutes: __designTimeSelection(String(format: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[1].value.arg[0].value.[0].value", fallback: "%02d"), __designTimeSelection(self.stopWatch.minutes, "#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[1].value.arg[1].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[1].value"), displaySeconds: __designTimeSelection(String(__designTimeSelection(self.stopWatch.secondsElapsed, "#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[2].value.arg[0].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[1].arg[2].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[1]")
            
            if (stopWatch.mode == .stopped) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.start(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Start"), buttonColor: __designTimeSelection(Color.blue, "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0].arg[1].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0].modifier[0].arg[0].value", fallback: 400)), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[0].[0]")
            }
            else if (stopWatch.mode == .running) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.pause(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Pause"), buttonColor: __designTimeSelection(Color.blue, "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0].arg[1].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0].modifier[0].arg[0].value", fallback: 400)), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[0]")
                    __designTimeSelection(Button(action: {
                        __designTimeSelection(self.addActivity(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[0]")
                        __designTimeSelection(self.stopWatch.stop(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[1]")
                        __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[0].value.[2]")
                    }) {
                        __designTimeSelection(TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: __designTimeSelection(Color.red, "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0].arg[1].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].arg[1].value.[0]")
                    }
                    .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].modifier[0].arg[0].value", fallback: 200))
                    .padding(.top, __designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1].modifier[1].arg[1].value", fallback: 30)), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[1].[1]")
            }
            else if (stopWatch.mode == .paused) {
                __designTimeSelection(Button(action: {__designTimeSelection(self.stopWatch.start(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[0].value.[0]")}) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Resume"), buttonColor: __designTimeSelection(Color.blue, "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0].arg[1].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0].modifier[0].arg[0].value", fallback: 400)), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[0]")
                __designTimeSelection(Button(action: {
                    __designTimeSelection(self.addActivity(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[0]")
                    __designTimeSelection(self.stopWatch.stop(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[1]")
                    __designTimeSelection(self.presentationMode.wrappedValue.dismiss(), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[0].value.[2]")
                }) {
                    __designTimeSelection(TimerButton(label: __designTimeString("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "Stop"), buttonColor: __designTimeSelection(Color.red, "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0].arg[1].value")), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].arg[1].value.[0]")
                }
                .offset(y:__designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].modifier[0].arg[0].value", fallback: 200))
                .padding(.top, __designTimeInteger("#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1].modifier[1].arg[1].value", fallback: 30)), "#5822.[1].[5].property.[0].[0].arg[0].value.[2].[2].[1]")
            }
            __designTimeSelection(Spacer(), "#5822.[1].[5].property.[0].[0].arg[0].value.[3]")
        }, "#5822.[1].[5].property.[0].[0]"))
#sourceLocation()
//        .sheet(isPresented: $showModal) {
//            NameModalView()
//        }
    }
}

extension ContentView {
    @_dynamicReplacement(for: addActivity()) private func __preview__addActivity() {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/ContentView.swift", line: 18)
        __designTimeSelection(self.userData.activities.append(__designTimeSelection(Activity(name: __designTimeSelection(self.activityName, "#5822.[1].[4].[0].modifier[0].arg[0].value.arg[0].value"), hours: __designTimeSelection(self.stopWatch.hours, "#5822.[1].[4].[0].modifier[0].arg[0].value.arg[1].value"), minutes: __designTimeSelection(self.stopWatch.minutes, "#5822.[1].[4].[0].modifier[0].arg[0].value.arg[2].value"), seconds: __designTimeSelection(self.stopWatch.secondsElapsed, "#5822.[1].[4].[0].modifier[0].arg[0].value.arg[3].value")), "#5822.[1].[4].[0].modifier[0].arg[0].value")), "#5822.[1].[4].[0]")
#sourceLocation()
    }
}

typealias ContentView = Clockwork.ContentView
typealias ContentView_Previews = Clockwork.ContentView_Previews
typealias TimerButton = Clockwork.TimerButton
typealias DisplayTime = Clockwork.DisplayTime