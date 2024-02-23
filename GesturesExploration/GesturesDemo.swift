//
//  ContentView.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 23/2/2567 BE.
//

import SwiftUI

struct GesturesDemo: View {
    var body: some View {
        NavigationStack {
            Form {
                MagnificationSectionView()
                
                Text("Drag")
                Text("Rotation")
                Text("General")
            }
            .navigationTitle("Gestures")
        }
    }
}

#Preview {
    GesturesDemo()
}
