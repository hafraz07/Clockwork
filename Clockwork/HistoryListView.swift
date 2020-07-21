//
//  HistoryListView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 19/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    //Environment Object
    @EnvironmentObject var userData: UserData
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
                NavigationLink(destination: ContentView()) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding()
                        .foregroundColor(.green)
                }
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
