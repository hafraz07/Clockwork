//
//  NameModalView.swift
//  Clockwork
//
//  Created by Afraz Hasan on 22/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct NameModalView: View {
    @Binding var activityName: String
    @Environment(\.presentationMode) private var presentationMode
    @Binding var newViewShowing: Bool

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Activity Name")) {
                    TextField("Enter activity name", text: $activityName)
                        .keyboardType(.default)
                        .navigationBarTitle(Text("Add New Activity"))
                        .navigationBarItems(trailing: Text("Done")
                            .disabled(self.activityName.isEmpty)
                            .foregroundColor(.pink)
                            .onTapGesture {
                                self.newViewShowing.toggle()
                                self.presentationMode.wrappedValue.dismiss()
                    })
                }
            }
        }
    }
}

//struct NameModalView_Previews: PreviewProvider {
//    static var previews: some View {
//        @Binding let boolean = true
//        NameModalView(newViewShowing: rt)
//    }
//}
