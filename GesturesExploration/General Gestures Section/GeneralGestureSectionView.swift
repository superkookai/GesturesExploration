//
//  GeneralGestureSectionView.swift
//  GesturesExploration
//
//  Created by Weerawut Chaiyasomboon on 24/2/2567 BE.
//

import SwiftUI

struct GeneralGestureSectionView: View {
    var body: some View {
        Section {
            //# is raw string
            NavigationLink(#"General Gesture"#) {
                
            }

        } header: {
            Text("General Gestures")
        }
    }
}

#Preview {
    Form {
        GeneralGestureSectionView()
    }
}
