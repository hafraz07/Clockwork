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
    
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                if (!userData.days.isEmpty) {
                    List {
                        ForEach(userData.days) { day in
                            NavigationLink(destination: HistoryListView()) {
                                DayRow(day: day)
                            }
                        }
                    }
                    .navigationBarTitle(Text("Day History"))
                }
                else {
                    Text("No Days")
                }
//                NavigationLink(destination: HistoryListView()) {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .padding()
                        .foregroundColor(.pink)
                        .onTapGesture {
                            self.userData.days.append(Day())
                    }
//                }
            }
        }
    }
}

struct DayListView_Previews: PreviewProvider {
    static var previews: some View {
        DayListView()
    }
}
