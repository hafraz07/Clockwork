//
//  NameModalView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 22/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct NameModalView: View {
//    @Binding var activity: Activity
//    @Binding var showSheet
    @State var activityName = ""
    @Environment(\.presentationMode) private var presentationMode
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Activity Name")) {
                    TextField("Enter activity name", text: $activityName)
                        .keyboardType(.default)
                        .navigationBarTitle(Text("Add New Activity"))
                        .navigationBarItems(trailing: Text("Done")
                            .foregroundColor(.blue)
                            .onTapGesture {
                                self.presentationMode.wrappedValue.dismiss()
                    })
                }
            }
        }
    }
}

struct NameModalView_Previews: PreviewProvider {
    static var previews: some View {
        NameModalView()
    }
}
