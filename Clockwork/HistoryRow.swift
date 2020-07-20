//
//  HistoryRow.swift
//  Clockwork
//
//  Created by Afraz Hasan on 19/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct HistoryRow: View {
    var body: some View {
        HStack() {
            Text("Interview Practice")
            Spacer()
            Text("00:00")
        }
        .padding()
    }
}

struct HistoryRow_Previews: PreviewProvider {
    static var previews: some View {
        HistoryRow()
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
