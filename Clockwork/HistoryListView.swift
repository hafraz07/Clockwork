//
//  HistoryListView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 19/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    @EnvironmentObject var userData: UserData
    @State private var showModal = false
    @State private var newViewShowing = false
    @State private var activityName = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                if (!userData.activities.isEmpty) {
                    List(userData.activities) { activity in
                        HistoryRow(activity: activity)
                    }
                    .navigationBarTitle(Text("Work History"))
                }
                else {
                    Text("No Activities")
                }
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            self.showModal.toggle()
                        }
                
                NavigationLink(destination: ContentView(activityName: activityName), isActive: $newViewShowing)
                {
                    EmptyView()
                }.hidden()
            }
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
        HistoryListView()
        .environmentObject(UserData())
    }
}
