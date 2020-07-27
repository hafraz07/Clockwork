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
    
    var buttonColor: Color {
        return activityName.isEmpty ? .gray : .pink
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Activity Name")) {
                    TextField("Enter activity name", text: $activityName)
                        .keyboardType(.default)
                        .navigationBarTitle("Add New Activity")
                        .navigationBarItems(trailing: Button("Done") {
                            self.newViewShowing.toggle()
                            self.presentationMode.wrappedValue.dismiss()
                        }
                        .disabled(self.activityName.isEmpty)
                        .foregroundColor(buttonColor)
                    )
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
