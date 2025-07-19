//
//  Item.swift
//  Policy
//
//  Created by Abdulquadri on 7/19/25.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
