//
//  Item.swift
//  Local
//
//  Created by mac on 2024/9/21.
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
