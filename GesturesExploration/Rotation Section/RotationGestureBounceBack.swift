//
//  RotationGestureBounceBack.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 24/2/2567 BE.
//

import SwiftUI

struct RotationGestureBounceBack: View {
    @State private var rotation: Double = 0.0
    
    var body: some View {
        NavigationStack {
            NiceTextView(text: "Hello World!", bgColor: .black, fgColor: .orange, radius: 10)
                .rotationEffect(Angle(degrees: rotation))
                .gesture(
                    RotationGesture()
                        .onChanged({ angle in
                            rotation = angle.degrees
                        })
                        .onEnded({ value in
                            withAnimation(.spring) {
                                rotation = 0
                            }
                        })
                )
                .navigationTitle("Rotate with Bounce Back")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RotationGestureBounceBack()
}
