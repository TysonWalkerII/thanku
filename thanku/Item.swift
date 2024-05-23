//
//  Item.swift
//  thanku
//
//  Created by 寒意⛓🥀💎▩xxııʌ.𝕽𝕬𝕽▽▽ on 5/1/24.
//

import Foundation
import SwiftData

@Model
final class Item:Identifiable {
    var name: String
    var goodDeeds:[String] = []
    
    init(name: String) {
        self.name = name
      
        
    }
}
