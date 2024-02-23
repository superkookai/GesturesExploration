//
//  MagnificationSectionView.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 23/2/2567 BE.
//

import SwiftUI

struct MagnificationSectionView: View {
    @State private var scaleFactor: CGFloat = 1.0
    
    var body: some View {
        Section {
            //# is raw string
            NavigationLink(#"Magnification Gesture "Go Back""#) {
                MagnificationBounceBackView()
            }
            
            NavigationLink(#"Magnification Gesture "Stay Still""#) {
                MagnificationView()
            }
            
            NavigationLink {
                MagnificationStoreStateView(scaleFactor: $scaleFactor)
            } label: {
                VStack(alignment: .leading, content: {
                    Text("Magnification Gesture")
                    Text("Store state")
                        .fontWeight(.thin)
                })
            }

        } header: {
            Text("Magnification Gestures")
        }

    }
}

#Preview {
    Form {
        MagnificationSectionView()
    }
}
