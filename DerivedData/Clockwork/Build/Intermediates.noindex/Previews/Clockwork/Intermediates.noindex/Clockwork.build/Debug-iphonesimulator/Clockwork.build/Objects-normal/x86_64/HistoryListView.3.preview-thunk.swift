@_private(sourceFile: "HistoryListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension HistoryListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/HistoryListView.swift", line: 66)
        AnyView(__designTimeSelection(HistoryListView(day: __designTimeSelection(Day(), "#10563.[2].[0].property.[0].[0].arg[0].value")), "#10563.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension HistoryListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/HistoryListView.swift", line: 19)
            AnyView(__designTimeSelection(VStack(alignment: .trailing) {
                if (!day.activities.isEmpty) {
                    __designTimeSelection(Toggle(isOn: __designTimeSelection($showPiechart, "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[0].arg[0].value")) {
                        __designTimeSelection(Text(__designTimeString("#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Show Piechart")), "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[0].arg[1].value.[0]")
                    }
                    .padding(), "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[0]")
                    if (!showPiechart) {
                        __designTimeSelection(List {
                          __designTimeSelection(ForEach(__designTimeSelection(Array(__designTimeSelection(day.activities.keys, "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[0].[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[0].[0].arg[0].value.[0].arg[0].value"), id: \.self) { activityName in
                              __designTimeSelection(HistoryRow(activity: self.day.activities[activityName] ?? Activity(name: "Default", hours: 20, minutes: 0, seconds: 0)), "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[0].[0].arg[0].value.[0].arg[2].value.[0]")
                          }
                          .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Work History")), "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[0].[0].arg[0].value.[0]")
                        }, "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[0].[0]")
                    }
                    else {
                        __designTimeSelection(ChartView(day: __designTimeSelection(self.day, "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[1].[0].arg[0].value")), "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[0].[1].[1].[0]")
                    }
                }
                else {
                    __designTimeSelection(Text(__designTimeString("#10563.[1].[5].property.[0].[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Activities")), "#10563.[1].[5].property.[0].[0].arg[1].value.[0].[1].[0]")
                }
                    __designTimeSelection(Image(systemName: __designTimeString("#10563.[1].[5].property.[0].[0].arg[1].value.[1].arg[0].value.[0].value", fallback: "plus.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#10563.[1].[5].property.[0].[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#10563.[1].[5].property.[0].[0].arg[1].value.[1].modifier[2].arg[1].value", fallback: 50))
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            __designTimeSelection(self.showModal.toggle(), "#10563.[1].[5].property.[0].[0].arg[1].value.[1].modifier[5].arg[0].value.[0]")
                        }, "#10563.[1].[5].property.[0].[0].arg[1].value.[1]")
                //Links to stopwatch view from modal
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ContentView(activityName: __designTimeSelection(activityName, "#10563.[1].[5].property.[0].[0].arg[1].value.[2].arg[0].value.arg[0].value"), day: __designTimeSelection(self.day, "#10563.[1].[5].property.[0].[0].arg[1].value.[2].arg[0].value.arg[1].value")), "#10563.[1].[5].property.[0].[0].arg[1].value.[2].arg[0].value"), isActive: __designTimeSelection($newViewShowing, "#10563.[1].[5].property.[0].[0].arg[1].value.[2].arg[1].value"))
                {
                    __designTimeSelection(EmptyView(), "#10563.[1].[5].property.[0].[0].arg[1].value.[2].arg[2].value.[0]")
                }.hidden(), "#10563.[1].[5].property.[0].[0].arg[1].value.[2]")
            }
        .sheet(isPresented: __designTimeSelection($showModal, "#10563.[1].[5].property.[0].[0].modifier[0].arg[0].value")) {
            __designTimeSelection(NameModalView(activityName: __designTimeSelection(self.$activityName, "#10563.[1].[5].property.[0].[0].modifier[0].arg[1].value.[0].arg[0].value"), newViewShowing: __designTimeSelection(self.$newViewShowing, "#10563.[1].[5].property.[0].[0].modifier[0].arg[1].value.[0].arg[1].value"))
                .onAppear {
                    self.activityName = ""
            }, "#10563.[1].[5].property.[0].[0].modifier[0].arg[1].value.[0]")
        }, "#10563.[1].[5].property.[0].[0]"))
#sourceLocation()
    }
}

typealias HistoryListView = Clockwork.HistoryListView
typealias HistoryListView_Previews = Clockwork.HistoryListView_Previews