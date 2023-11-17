//
//  Tips.swift
//  Tips
//
//  Created by nagarjuna chagarlamudi on 17/11/23.
//

import SwiftUI

struct Tips: Identifiable {
    var id: UUID = UUID()
    var name: String
    var description: String = "No Description"
    var imageName: Image
    var gradient: Gradient
}
