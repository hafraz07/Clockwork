@_private(sourceFile: "DayListView.swift") import Clockwork
import SwiftUI
import SwiftUI

extension DayListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 74)
        AnyView(DayListView()
        .environmentObject(UserData()))
#sourceLocation()
    }
}

extension DayListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/afrazhasan/Documents/Clockwork/Clockwork/DayListView.swift", line: 20)
        AnyView(NavigationView {
            VStack(alignment: .trailing) {
                if (!userData.days.isEmpty) {
                    List {
                        ForEach(userData.days) { day in
                            NavigationLink(destination: HistoryListView(day: day)) {
                                DayRow(day: day)
                            }
                        }
                    }
                    .navigationBarTitle(Text(__designTimeString("#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value.[0].value", fallback: "Day History")))
                }
                else {
                    Text(__designTimeString("#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[0].[1].[0].arg[0].value.[0].value", fallback: "No Days"))
                }
                
                NavigationLink(destination: ContentView(activityName: self.activityName, day: self.day), isActive: $newViewShowing)
                {
                    EmptyView()
                }.hidden()
                
                    Image(systemName: __designTimeString("#9437.[1].[6].property.[0].[0].arg[0].value.[0].arg[1].value.[2].arg[0].value.[0].value", fallback: "plus.circle.fill"))
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
                                self.showModal.toggle()
                                self.userData.days.append(self.day)
                            }
                            else {
                                self.showToast.toggle()
                            }
                            
                    }
                    .sheet(isPresented: $showModal) {
                        NameModalView(activityName: self.$activityName, newViewShowing: self.$newViewShowing)
                }
            }
        }
        .toast(isPresented: self.$showToast) {
            Text(__designTimeString("#9437.[1].[6].property.[0].[0].modifier[0].arg[1].value.[0].arg[0].value.[0].value", fallback: "Day already exists"))
        })
#sourceLocation()
    }
}

typealias DayListView = Clockwork.DayListView
typealias DayListView_Previews = Clockwork.DayListView_Previews