//
//  MagnificationStoreStateView.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 23/2/2567 BE.
//

import SwiftUI

struct MagnificationStoreStateView: View {
    @State private var changeScaleFactor: CGFloat = 0.0
    @Binding var scaleFactor: CGFloat
    
    var sumScaleFactor: CGFloat {
        changeScaleFactor + scaleFactor
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                
                NiceTextView(
                    text: "Hello, World!",
                    bgColor: .black,
                    fgColor: .orange,
                    radius: 10)
                .scaleEffect( sumScaleFactor)
                .gesture(
                    MagnificationGesture()
                        .onChanged { value in
                            withAnimation(.spring()) {
                                // startScaleFactor will be the
                                // difference in scaling.
                                // Example: If value is 1.2 then
                                // the change in scale is 1.2 - 1
                                // in other words 0.2
                                changeScaleFactor = value - 1
                            }
                        }
                        .onEnded { value in
                            withAnimation(.spring()) {
                                // Update the scale factor.
                                scaleFactor += changeScaleFactor
                                
                                // Reset changeScaleFactor
                                changeScaleFactor = 0
                            }
                        }
                )
                
                Spacer()
            }
            .navigationTitle("Magnify and Store State")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    MagnificationStoreStateView(scaleFactor: .constant(1.0))
}
