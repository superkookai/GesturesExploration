//
//  DragSectionView.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 24/2/2567 BE.
//

import SwiftUI

struct DragSectionView: View {
    @State private var endOffset: CGSize = .zero
    
    var body: some View {
        Section {
            //# is raw string
            NavigationLink(#"Drag Gesture "Go Back""#) {
                DragGestureBounceBack()
            }
            
            NavigationLink(#"Drag Gesture "Stay Still""#) {
                DragGestureView()
            }
            
            NavigationLink {
                DragGestureStoreState(endOffset: $endOffset)
            } label: {
                VStack(alignment: .leading, content: {
                    Text("Drag Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                })
            }

        } header: {
            Text("Drag Gestures")
        }
    }
}

#Preview {
    Form {
        DragSectionView()
    }
}
