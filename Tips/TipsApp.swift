//
//  TipsApp.swift
//  Tips
//
//  Created by nagarjuna chagarlamudi on 17/11/23.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TipsListView()
    }
}

@main
struct TipsApp: App {
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
