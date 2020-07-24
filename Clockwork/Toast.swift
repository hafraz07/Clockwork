//
//  Toast.swift
//  Clockwork
//
//  Created by Afraz Hasan on 25/7/20.
//  Copyright © 2020 Afraz Hasan. All rights reserved.
//

import SwiftUI

struct Toast<Presenting, Content>: View where Presenting: View, Content: View {
    @Binding var isPresented: Bool
    let presenter: () -> Presenting
    let content: () -> Content
    let delay: TimeInterval = 2

    var body: some View {
        if self.isPresented {
            DispatchQueue.main.asyncAfter(deadline: .now() + self.delay) {
                withAnimation {
                    self.isPresented = false
                }
            }
        }

        return GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                self.presenter()

                ZStack {
                    Capsule()
                        .fill(Color.gray)

                    self.content()
                } //ZStack (inner)
                .frame(width: geometry.size.width / 1.5, height: geometry.size.height / 10)
                    .opacity(self.isPresented ? 0.8 : 0)
            } //ZStack (outer)
            .padding(.bottom)
        } //GeometryReader
    } //body
} //Toast

extension View {
    func toast<Content>(isPresented: Binding<Bool>, content: @escaping () -> Content) -> some View where Content: View {
        Toast(
            isPresented: isPresented,
            presenter: { self },
            content: content
        )
    }
}

//struct Toast_Previews: PreviewProvider {
//    static var previews: some View {
//        Toast()
//    }
//}
