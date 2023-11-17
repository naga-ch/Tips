//
//  TipsViewModel.swift
//  Tips
//
//  Created by nagarjuna chagarlamudi on 17/11/23.
//

import Foundation
import SwiftUI

class TipsViewModel: ObservableObject {
    let images = [
        Image(systemName: "apps.iphone"),
        Image(systemName: "hand.draw"),
        Image(systemName: "heart"),
        Image(systemName: "lifepreserver"),
        Image(systemName: "sparkles"),
        Image(systemName: "star"),
        Image(systemName: "photo.on.rectangle.angled"),
        Image(systemName: "camera"),
        Image(systemName: "iphone"),
        Image(systemName: "airpods")
    ]
    
    @Published var tips: [Tips]
    @Published var otherTips: [Tips]
    @Published var otherTips2: [Tips]
    @Published var otherTips3: [Tips]
    @Published var otherTips4: [Tips]
    
    init() {
        tips = [
            Tips(name: "Navigate your iPhone", description: "Discover gestures to navigate your iPhone with ease.", imageName: images[0],gradient: Gradient(colors: [.blue, .teal])),
            Tips(name: "Practise key gestures", description: "Learn how to drag, zoom, select text, and more.", imageName: images[1],gradient: Gradient(colors: [.purple, .blue]) ),
        ]
        
        otherTips = [
            Tips(name: "Personalise your iPhone", description: "Learn how to makeit yours with custom wallpapers,settings and sounds.", imageName: images[2], gradient: Gradient(colors: [.pink, .red])),
            Tips(name: "Be prepared", description: "Learn about features that can help you stay safe and keep track of your devices.", imageName: images[3], gradient: Gradient(colors: [.orange, .yellow])),
        ]
        
        otherTips2 = [
            Tips(name: "What's new in iOS 17", description: "Discover new features that help you collaborate and communicate, and personalise your iPhone.", imageName: images[4], gradient: Gradient(colors: [.purple, .pink])),
            Tips(name: "Beyond the basics", description: "Discover ways to customise settings and do more with your iPhone.", imageName: images[5], gradient: Gradient(colors: [.red, .orange])),
        ]
        
        otherTips3 = [
            Tips(name: "Photos", description: "Learn how to browse and edit your favourite moments.", imageName: images[6], gradient: Gradient(colors: [.purple, .pink])),
            Tips(name: "Camera", description: "Learn how to take your best shot.", imageName: images[7], gradient: Gradient(colors: [.red, .orange])),
        ]
        
        otherTips4 = [
            Tips(name: "iPhone", description: "Discover new features that help you collaborate and communicate, and personalise your iPhone.", imageName: images[8], gradient: Gradient(colors: [.blue, .blue])),
            Tips(name: "AirPods", description: "Discover ways to customise settings and do more with your iPhone.", imageName: images[9], gradient: Gradient(colors: [.blue, .blue])),
        ]
    }
}


