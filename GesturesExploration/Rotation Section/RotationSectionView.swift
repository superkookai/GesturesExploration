//
//  RotationSectionView.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 24/2/2567 BE.
//

import SwiftUI

struct RotationSectionView: View {
    @State private var rotation: Double = 0
    
    var body: some View {
        Section {
            //# is raw string
            NavigationLink(#"Rotate Gesture "Go Back""#) {
                RotationGestureBounceBack()
            }
            
            NavigationLink(#"Rotate Gesture "Stay Still""#) {
                RotationGestureView()
            }
            
            NavigationLink {
                RotationGestureStoreState(rotation: $rotation)
            } label: {
                VStack(alignment: .leading, content: {
                    Text("Rotate Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                })
            }

        } header: {
            Text("Rotate Gestures")
        }
    }
}

#Preview {
    Form {
        RotationSectionView()
    }
}
