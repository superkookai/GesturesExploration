//
//  MagnificationBounceBackView.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 23/2/2567 BE.
//

import SwiftUI

struct MagnificationBounceBackView: View {
    @State private var scaleFactor: CGFloat = 1.0
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                NiceTextView(text: "Hello World", bgColor: .black, fgColor: .orange, radius: 10)
                    .scaleEffect(scaleFactor)
                    .gesture(
                        MagnificationGesture()
                            .onChanged({ value in
                                scaleFactor = value
                            })
                            .onEnded({ value in
                                withAnimation(.spring) {
                                    scaleFactor = 1.0
                                }
                            })
                    )
                
                Spacer()
            }
            .navigationTitle("Magnify and Bounce back")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationBounceBackView()
}
