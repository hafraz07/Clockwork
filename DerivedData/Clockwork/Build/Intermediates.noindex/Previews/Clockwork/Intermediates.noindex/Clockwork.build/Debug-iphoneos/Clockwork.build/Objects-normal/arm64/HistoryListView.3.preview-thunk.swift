@_private(sourceFile: "HistoryListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension HistoryListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/HistoryListView.swift", line: 56)
        AnyView(__designTimeSelection(HistoryListView(day: __designTimeSelection(Day(), "#9578.[2].[0].property.[0].[0].arg[0].value")), "#9578.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension HistoryListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/HistoryListView.swift", line: 18)
            AnyView(__designTimeSelection(VStack(alignment: .trailing) {
                if (!day.activities.isEmpty) {
                    __designTimeSelection(List {
                        __designTimeSelection(ForEach(__designTimeSelection(Array(__designTimeSelection(day.activities.keys, "#9578.[1].[4].property.[0].[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#9578.[1].[4].property.[0].[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[0].value"), id: \.self) { activityName in
                            __designTimeSelection(HistoryRow(activity: self.day.activities[activityName] ?? Activity(name: "Default", hours: 20, minutes: 0, seconds: 0)), "#9578.[1].[4].property.[0].[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0]")
                        }
                        .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#9578.[1].[4].property.[0].[0].arg[1].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Work History")), "#9578.[1].[4].property.[0].[0].arg[1].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[0].value")), "#9578.[1].[4].property.[0].[0].arg[1].value.[0].[0].[0].arg[0].value.[0]")
                    }, "#9578.[1].[4].property.[0].[0].arg[1].value.[0].[0].[0]")
                }
                else {
                    __designTimeSelection(Text(__designTimeString("#9578.[1].[4].property.[0].[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Activities")), "#9578.[1].[4].property.[0].[0].arg[1].value.[0].[1].[0]")
                }
                    __designTimeSelection(Image(systemName: __designTimeString("#9578.[1].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].value", fallback: "plus.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#9578.[1].[4].property.[0].[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#9578.[1].[4].property.[0].[0].arg[1].value.[1].modifier[2].arg[1].value", fallback: 50))
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            __designTimeSelection(self.showModal.toggle(), "#9578.[1].[4].property.[0].[0].arg[1].value.[1].modifier[5].arg[0].value.[0]")
                        }, "#9578.[1].[4].property.[0].[0].arg[1].value.[1]")
                //Links to stopwatch view from modal
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ContentView(activityName: __designTimeSelection(activityName, "#9578.[1].[4].property.[0].[0].arg[1].value.[2].arg[0].value.arg[0].value"), day: __designTimeSelection(self.day, "#9578.[1].[4].property.[0].[0].arg[1].value.[2].arg[0].value.arg[1].value")), "#9578.[1].[4].property.[0].[0].arg[1].value.[2].arg[0].value"), isActive: __designTimeSelection($newViewShowing, "#9578.[1].[4].property.[0].[0].arg[1].value.[2].arg[1].value"))
                {
                    __designTimeSelection(EmptyView(), "#9578.[1].[4].property.[0].[0].arg[1].value.[2].arg[2].value.[0]")
                }.hidden(), "#9578.[1].[4].property.[0].[0].arg[1].value.[2]")
            }
        .sheet(isPresented: __designTimeSelection($showModal, "#9578.[1].[4].property.[0].[0].modifier[0].arg[0].value")) {
            __designTimeSelection(NameModalView(activityName: __designTimeSelection(self.$activityName, "#9578.[1].[4].property.[0].[0].modifier[0].arg[1].value.[0].arg[0].value"), newViewShowing: __designTimeSelection(self.$newViewShowing, "#9578.[1].[4].property.[0].[0].modifier[0].arg[1].value.[0].arg[1].value"))
                .onAppear {
                    self.activityName = ""
            }, "#9578.[1].[4].property.[0].[0].modifier[0].arg[1].value.[0]")
        }, "#9578.[1].[4].property.[0].[0]"))
#sourceLocation()
    }
}

typealias HistoryListView = Clockwork.HistoryListView
typealias HistoryListView_Previews = Clockwork.HistoryListView_Previews