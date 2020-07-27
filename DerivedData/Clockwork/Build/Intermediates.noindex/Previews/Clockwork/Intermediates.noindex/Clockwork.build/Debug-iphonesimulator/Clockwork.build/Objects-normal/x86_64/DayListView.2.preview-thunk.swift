@_private(sourceFile: "DayListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DayListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 81)
        AnyView(DayListView()
        .environmentObject(UserData()))
#sourceLocation()
    }
}

extension DayListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 27)
        AnyView(NavigationView {
            VStack(alignment: .trailing) {
                if (!userData.days.isEmpty) {
                    List {
                        ForEach(Array(userData.days.keys), id:\.self) { date in
                            NavigationLink(destination: HistoryListView(day: self.userData.days[date] ?? Day())) {
                                DayRow(day: self.userData.days[date] ?? Day())
                            }
                        }
                    }
                    .navigationBarTitle(Text(__designTimeString("#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Day History")))
                }
                else {
                    Text(__designTimeString("#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Days"))
                }
                
                //Links to stopwatch view from modal
                NavigationLink(destination: ContentView(activityName: self.activityName, day: self.day), isActive: $newViewShowing)
                {
                    EmptyView()
                }.hidden()
                
                    Image(systemName: __designTimeString("#9682.[1].[7].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].value", fallback: "plus.circle.fill"))
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
                                self.showToast.toggle()
                            }
                            else {
                                self.day = Day()
                                self.showModal.toggle()
                                self.userData.days[self.getDate()] = self.day
                            }
                    }
                    .sheet(isPresented: $showModal) {
                        NameModalView(activityName: self.$activityName, newViewShowing: self.$newViewShowing)
                }
            }
        }
        .toast(isPresented: self.$showToast) {
            Text(__designTimeString("#9682.[1].[7].property.[0].[0].modifier[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Day already exists"))
        })
#sourceLocation()
    }
}

extension DayListView {
    @_dynamicReplacement(for: getDate()) private func __preview__getDate()->String {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 20)
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.string(from: date)
#sourceLocation()
    }
}

typealias DayListView = Clockwork.DayListView
typealias DayListView_Previews = Clockwork.DayListView_Previews