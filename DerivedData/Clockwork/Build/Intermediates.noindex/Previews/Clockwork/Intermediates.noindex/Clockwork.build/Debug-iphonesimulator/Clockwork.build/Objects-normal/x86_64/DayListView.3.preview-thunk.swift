@_private(sourceFile: "DayListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DayListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 75)
        AnyView(__designTimeSelection(DayListView()
        .environmentObject(__designTimeSelection(UserData(), "#9437.[2].[0].property.[0].[0].modifier[0].arg[0].value")), "#9437.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DayListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 20)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(VStack(alignment: .trailing) {
                if (!userData.days.isEmpty) {
                    __designTimeSelection(List {
                        __designTimeSelection(ForEach(__designTimeSelection(userData.days, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[0].value")) { day in
                            __designTimeSelection(NavigationLink(destination: __designTimeSelection(HistoryListView(day: __designTimeSelection(day, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                __designTimeSelection(DayRow(day: __designTimeSelection(day, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value")), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                            }, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0]")
                        }, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0]")
                    }
                    .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Day History")), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value")), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0]")
                }
                else {
                    __designTimeSelection(Text(__designTimeString("#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Days")), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0]")
                }
                
                //Links to stopwatch view from modal
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ContentView(activityName: __designTimeSelection(self.activityName, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.arg[0].value"), day: __designTimeSelection(self.day, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.arg[1].value")), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value"), isActive: __designTimeSelection($newViewShowing, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value"))
                {
                    __designTimeSelection(EmptyView(), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[2].value.[0]")
                }.hidden(), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[1]")
                
                    __designTimeSelection(Image(systemName: __designTimeString("#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].value", fallback: "plus.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[2].arg[1].value", fallback: 50))
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            //Try to find today in hashtable,
                            //if doesn't exist, append and toggle showModal
                            //else show alert
                            if (self.userData.days.isEmpty) {
                                self.day = Day()
                                __designTimeSelection(self.showModal.toggle(), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[5].arg[0].value.[0].[0].[1]")
                                __designTimeSelection(self.userData.days.append(__designTimeSelection(self.day, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[5].arg[0].value.[0].[0].[2].modifier[0].arg[0].value")), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[5].arg[0].value.[0].[0].[2]")
                            }
                            else {
                                __designTimeSelection(self.showToast.toggle(), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[5].arg[0].value.[0].[1].[0]")
                            }
                            
                    }
                    .sheet(isPresented: __designTimeSelection($showModal, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[6].arg[0].value")) {
                        __designTimeSelection(NameModalView(activityName: __designTimeSelection(self.$activityName, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[6].arg[1].value.[0].arg[0].value"), newViewShowing: __designTimeSelection(self.$newViewShowing, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[6].arg[1].value.[0].arg[1].value")), "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].modifier[6].arg[1].value.[0]")
                }, "#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2]")
            }, "#9437.[1].[6].property.[0].[0].arg[0].value.[0]")
        }
        .toast(isPresented: __designTimeSelection(self.$showToast, "#9437.[1].[6].property.[0].[0].modifier[0].arg[0].value")) {
            __designTimeSelection(Text(__designTimeString("#9437.[1].[6].property.[0].[0].modifier[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Day already exists")), "#9437.[1].[6].property.[0].[0].modifier[0].arg[1].value.[0]")
        }, "#9437.[1].[6].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DayListView = Clockwork.DayListView
typealias DayListView_Previews = Clockwork.DayListView_Previews