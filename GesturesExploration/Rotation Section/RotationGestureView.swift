//
//  RotationGestureView.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 24/2/2567 BE.
//

import SwiftUI

struct RotationGestureView: View {
    @State private var rotation: Double = 0.0
    @State private var currentRotation: Double = 0.0
    
    var totalRotation: Double{
        currentRotation + rotation
    }
    
    var body: some View {
        NavigationStack {
            NiceTextView(text: "Hello World!", bgColor: .black, fgColor: .orange, radius: 10)
                .rotationEffect(Angle(degrees: totalRotation))
                .gesture(
                    RotationGesture()
                        .onChanged({ angle in
                            currentRotation = angle.degrees
                        })
                        .onEnded({ value in
                            withAnimation(.spring) {
                                rotation += currentRotation
                                
                                //Reset currentRotation
                                currentRotation = 0
                            }
                        })
                )
                .onTapGesture {
                    withAnimation(.spring) {
                        rotation = 0
                        currentRotation = 0
                    }
                }
                .navigationTitle("Rotate with Stay Still")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    RotationGestureView()
}
