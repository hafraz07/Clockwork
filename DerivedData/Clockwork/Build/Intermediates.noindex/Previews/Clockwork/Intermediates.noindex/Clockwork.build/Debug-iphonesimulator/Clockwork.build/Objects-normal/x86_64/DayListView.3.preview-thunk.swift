@_private(sourceFile: "DayListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DayListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 48)
        AnyView(__designTimeSelection(DayListView(), "#5204.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension DayListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 15)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(VStack(alignment: .trailing) {
                if (!userData.days.isEmpty) {
                    __designTimeSelection(List {
                        __designTimeSelection(ForEach(__designTimeSelection(userData.days, "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[0].value")) { day in
                            __designTimeSelection(NavigationLink(destination: __designTimeSelection(HistoryListView(), "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value")) {
                                __designTimeSelection(DayRow(day: __designTimeSelection(day, "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0].arg[0].value")), "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0].arg[1].value.[0]")
                            }, "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0].arg[1].value.[0]")
                        }, "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value.[0]")
                    }
                    .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Day History")), "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value")), "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0]")
                }
                else {
                    __designTimeSelection(Text(__designTimeString("#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Days")), "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0]")
                }
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(HistoryListView(), "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value")) {
                    __designTimeSelection(Image(systemName: __designTimeString("#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].arg[0].value.[0].value", fallback: "plus.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[2].arg[1].value", fallback: 50))
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            __designTimeSelection(self.userData.days.append(__designTimeSelection(Day(), "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[5].arg[0].value.[0].modifier[0].arg[0].value")), "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0].modifier[5].arg[0].value.[0]")
                    }, "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[1].value.[0]")
                }, "#5204.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[1]")
            }, "#5204.[1].[1].property.[0].[0].arg[0].value.[0]")
        }, "#5204.[1].[1].property.[0].[0]"))
#sourceLocation()
    }
}

typealias DayListView = Clockwork.DayListView
typealias DayListView_Previews = Clockwork.DayListView_Previews