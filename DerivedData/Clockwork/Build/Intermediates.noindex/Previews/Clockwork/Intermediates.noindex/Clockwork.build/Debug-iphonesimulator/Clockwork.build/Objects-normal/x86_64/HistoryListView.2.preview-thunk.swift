@_private(sourceFile: "HistoryListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension HistoryListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/HistoryListView.swift", line: 56)
        AnyView(HistoryListView(day: Day()))
#sourceLocation()
    }
}

extension HistoryListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/HistoryListView.swift", line: 18)
            AnyView(VStack(alignment: .trailing) {
                if (!day.activities.isEmpty) {
                    List {
                        ForEach(Array(day.activities.keys), id: \.self) { activityName in
                            HistoryRow(activity: self.day.activities[activityName] ?? Activity(name: "Default", hours: 20, minutes: 0, seconds: 0))
                        }
                        .navigationBarTitle(Text(__designTimeString("#9578.[1].[4].property.[0].[0].arg[1].value.[0].[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Work History")))
                    }
                }
                else {
                    Text(__designTimeString("#9578.[1].[4].property.[0].[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Activities"))
                }
                    Image(systemName: __designTimeString("#9578.[1].[4].property.[0].[0].arg[1].value.[1].arg[0].value.[0].value", fallback: "plus.circle.fill"))
                        .resizable()
                        .scaledToFit()
                        .frame(width: __designTimeInteger("#9578.[1].[4].property.[0].[0].arg[1].value.[1].modifier[2].arg[0].value", fallback: 50), height: __designTimeInteger("#9578.[1].[4].property.[0].[0].arg[1].value.[1].modifier[2].arg[1].value", fallback: 50))
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            self.showModal.toggle()
                        }
                //Links to stopwatch view from modal
                NavigationLink(destination: ContentView(activityName: activityName, day: self.day), isActive: $newViewShowing)
                {
                    EmptyView()
                }.hidden()
            }
        .sheet(isPresented: $showModal) {
            NameModalView(activityName: self.$activityName, newViewShowing: self.$newViewShowing)
                .onAppear {
                    self.activityName = ""
            }
        })
#sourceLocation()
    }
}

typealias HistoryListView = Clockwork.HistoryListView
typealias HistoryListView_Previews = Clockwork.HistoryListView_Previews