//
//  DayListView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 23/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct DayListView: View {
    @EnvironmentObject var userData: UserData
    @State private var newViewShowing = false
    @State private var showModal = false
    @State var showToast: Bool = false
    @State private var activityName = ""
    @State var day = Day()
    
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                if (!userData.days.isEmpty) {
                    List {
                        ForEach(userData.days) { day in
                            NavigationLink(destination: HistoryListView(day: day)) {
                                DayRow(day: day)
                            }
                        }
                    }
                    .navigationBarTitle(Text("Day History"))
                }
                else {
                    Text("No Days")
                }
                
                //Links to stopwatch view from modal
                NavigationLink(destination: ContentView(activityName: self.activityName, day: self.day), isActive: $newViewShowing)
                {
                    EmptyView()
                }.hidden()
                
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
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
            Text("Day already exists")
        }
    }
}

struct DayListView_Previews: PreviewProvider {
    static var previews: some View {
        DayListView()
        .environmentObject(UserData())
    }
}
