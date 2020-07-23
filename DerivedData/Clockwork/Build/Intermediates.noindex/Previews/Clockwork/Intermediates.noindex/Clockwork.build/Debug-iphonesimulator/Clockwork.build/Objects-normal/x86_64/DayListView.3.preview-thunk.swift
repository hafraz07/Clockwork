@_private(sourceFile: "DayListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DayListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 54)
        AnyView(__designTimeSelection(DayListView()
        .environmentObject(__designTimeSelection(UserData(), "#9437.[2].[0].property.[0].[0].modifier[0].arg[0].value")), "#9437.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DayListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 16)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(VStack(alignment: .trailing) {
                if (!userData.days.isEmpty) {
                    __designTimeSelection(List {
                        __designTimeSelection(ForEach(__designTimeSelection(userData.days, "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[0].value")) { day in
                            __designTimeSelection(NavigationLink(destination: __designTimeSelection(HistoryListView(day: __designTimeSelection(day, "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value.arg[0].value")), "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                __designTimeSelection(DayRow(day: __designTimeSelection(day, "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value")), "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                            }, "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0]")
                        }, "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0]")
                    }
                    .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Day History")), "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value")), "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0]")
                }
                else {
                    __designTimeSelection(Text(__designTimeString("#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Days")), "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0]")
                }
                
//                NavigationLink(destination: HistoryListView(day: day), isActive: $newViewShowing)
//                {
//                    EmptyView()
//                }.hidden()
                
                    __designTimeSelection(Image(systemName: __designTimeString("#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].value", fallback: "plus.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[1].value", fallback: 50))
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            __designTimeSelection(self.newViewShowing.toggle(), "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[5].arg[0].value.[0]")
                            __designTimeSelection(self.userData.days.append(__designTimeSelection(Day(), "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[5].arg[0].value.[1].modifier[0].arg[0].value")), "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[5].arg[0].value.[1]")
                    }, "#9437.[1].[2].property.[0].[0].arg[0].value.[0].arg[1].value.[1]")
            }, "#9437.[1].[2].property.[0].[0].arg[0].value.[0]")
        }, "#9437.[1].[2].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DayListView = Clockwork.DayListView
typealias DayListView_Previews = Clockwork.DayListView_Previews