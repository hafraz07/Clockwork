@_private(sourceFile: "DayListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DayListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 81)
        AnyView(__designTimeSelection(DayListView()
        .environmentObject(__designTimeSelection(UserData(), "#9682.[2].[0].property.[0].[0].modifier[0].arg[0].value")), "#9682.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DayListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 27)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(VStack(alignment: .trailing) {
                if (!userData.days.isEmpty) {
                    __designTimeSelection(List {
                        __designTimeSelection(ForEach(__designTimeSelection(Array(__designTimeSelection(userData.days.keys, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[0].value.arg[0].value")), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[0].value"), id:\.self) { date in
                            __designTimeSelection(NavigationLink(destination: __designTimeSelection(HistoryListView(day: self.userData.days[date] ?? Day()), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].arg[0].value")) {
                                __designTimeSelection(DayRow(day: self.userData.days[date] ?? Day()), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0].arg[1].value.[0]")
                            }, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[2].value.[0]")
                        }, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0]")
                    }
                    .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Day History")), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value")), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0]")
                }
                else {
                    __designTimeSelection(Text(__designTimeString("#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Days")), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0]")
                }
                
                //Links to stopwatch view from modal
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ContentView(activityName: __designTimeSelection(self.activityName, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.arg[0].value"), day: __designTimeSelection(self.day, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.arg[1].value")), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value"), isActive: __designTimeSelection($newViewShowing, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value"))
                {
                    __designTimeSelection(EmptyView(), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0]")
                }.hidden(), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[1]")
                
                    __designTimeSelection(Image(systemName: __designTimeString("#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].value", fallback: "plus.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[2].arg[1].value", fallback: 50))
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            //Try to find today in hashtable,
                            //if doesn't exist, append and toggle showModal
                            //else show toast
                            if self.userData.days[self.getDate()] != nil {
                                __designTimeSelection(self.showToast.toggle(), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[5].arg[0].value.[0].[0].[0]")
                            }
                            else {
                                self.day = Day()
                                __designTimeSelection(self.showModal.toggle(), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[5].arg[0].value.[0].[1].[1]")
                                self.userData.days[self.getDate()] = self.day
                            }
                    }
                    .sheet(isPresented: __designTimeSelection($showModal, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[6].arg[0].value")) {
                        __designTimeSelection(NameModalView(activityName: __designTimeSelection(self.$activityName, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[6].arg[1].value.[0].arg[0].value"), newViewShowing: __designTimeSelection(self.$newViewShowing, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[6].arg[1].value.[0].arg[1].value")), "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[6].arg[1].value.[0]")
                }, "#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2]")
            }, "#9682.[1].[7].property.[0].[0].arg[0].value.[0]")
        }
        .toast(isPresented: __designTimeSelection(self.$showToast, "#9682.[1].[7].property.[0].[0].modifier[0].arg[0].value")) {
            __designTimeSelection(Text(__designTimeString("#9682.[1].[7].property.[0].[0].modifier[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Day already exists")), "#9682.[1].[7].property.[0].[0].modifier[0].arg[1].value.[0]")
        }, "#9682.[1].[7].property.[0].[0]"))
#sourceLocation()
    }
}

extension DayListView {
    @_dynamicReplacement(for: getDate()) private func __preview__getDate()->String {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 20)
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return __designTimeSelection(formatter.string(from: __designTimeSelection(date, "#9682.[1].[6].[3].modifier[0].arg[0].value")), "#9682.[1].[6].[3]")
#sourceLocation()
    }
}

typealias DayListView = Clockwork.DayListView
typealias DayListView_Previews = Clockwork.DayListView_Previews