//
//  HistoryListView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 19/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    @ObservedObject var day: Day
    @State private var showModal = false
    @State private var newViewShowing = false
    @State private var showPiechart = false
    @State private var activityName = ""
    
    var body: some View {
            VStack {
                if (!day.activities.isEmpty) {
                    Toggle(isOn: $showPiechart) {
                        Text("Show Piechart")
                    }
                    .padding()
                    if (!showPiechart) {
                        List {
                          ForEach(Array(day.activities.keys), id: \.self) { activityName in
                              HistoryRow(activity: self.day.activities[activityName] ?? Activity(name: "Default", activityTime: 20))
                          }
                          .navigationBarTitle(Text("Work History"))
                        }
                    }
                    else {
                        ChartView(day: self.day)
                        .navigationBarTitle(Text("Work History"))
                    }
                }
                else {
                    Text("No Activities")
                }
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .trailing)
//                        .padding()
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
        }
    }
}

struct HistoryListView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryListView(day: Day())
    }
}
