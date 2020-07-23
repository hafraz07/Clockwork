@_private(sourceFile: "HistoryListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension HistoryListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/HistoryListView.swift", line: 56)
        AnyView(__designTimeSelection(HistoryListView()
        .environmentObject(__designTimeSelection(UserData(), "#5326.[2].[0].property.[0].[0].modifier[0].arg[0].value")), "#5326.[2].[0].property.[0].[0]"))
#sourceLocation()
    }
}

extension HistoryListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/HistoryListView.swift", line: 18)
        AnyView(__designTimeSelection(NavigationView {
            __designTimeSelection(VStack(alignment: .trailing) {
                if (!userData.activities.isEmpty) {
                    __designTimeSelection(List(__designTimeSelection(userData.activities, "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[0].value")) { activity in
                        __designTimeSelection(HistoryRow(activity: __designTimeSelection(activity, "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[1].value.[0].arg[0].value")), "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].arg[1].value.[0]")
                    }
                    .navigationBarTitle(__designTimeSelection(Text(__designTimeString("#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Work History")), "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value")), "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0]")
                }
                else {
                    __designTimeSelection(Text(__designTimeString("#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Activities")), "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0]")
                }
                    __designTimeSelection(Image(systemName: __designTimeString("#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].arg[0].value.[0].value", fallback: "plus.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[2].arg[1].value", fallback: 50))
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            __designTimeSelection(self.showModal.toggle(), "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1].modifier[5].arg[0].value.[0]")
                        }, "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[1]")
                
                __designTimeSelection(NavigationLink(destination: __designTimeSelection(ContentView(activityName: __designTimeSelection(activityName, "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.arg[0].value")), "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value"), isActive: __designTimeSelection($newViewShowing, "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[1].value"))
                {
                    __designTimeSelection(EmptyView(), "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[2].value.[0]")
                }.hidden(), "#5326.[1].[4].property.[0].[0].arg[0].value.[0].arg[1].value.[2]")
            }, "#5326.[1].[4].property.[0].[0].arg[0].value.[0]")
        }
        .sheet(isPresented: __designTimeSelection($showModal, "#5326.[1].[4].property.[0].[0].modifier[0].arg[0].value")) {
            __designTimeSelection(NameModalView(activityName: __designTimeSelection(self.$activityName, "#5326.[1].[4].property.[0].[0].modifier[0].arg[1].value.[0].arg[0].value"), newViewShowing: __designTimeSelection(self.$newViewShowing, "#5326.[1].[4].property.[0].[0].modifier[0].arg[1].value.[0].arg[1].value"))
                .onAppear {
                    self.activityName = ""
            }, "#5326.[1].[4].property.[0].[0].modifier[0].arg[1].value.[0]")
        }, "#5326.[1].[4].property.[0].[0]"))
#sourceLocation()
    }
}

typealias HistoryListView = Clockwork.HistoryListView
typealias HistoryListView_Previews = Clockwork.HistoryListView_Previews