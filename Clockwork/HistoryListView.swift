//
//  HistoryListView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 19/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct HistoryListView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .trailing) {
                List(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                    NavigationLink(destination: ContentView()) {
                        HistoryRow()
                    }
                }
                .navigationBarTitle(Text("Work History"))
                
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
    }
}
