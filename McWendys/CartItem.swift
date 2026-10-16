//
//  cartItem.swift
//  McWendys
//
//  Created by Suraj Srivastava on 10/6/26.
//

import Foundation
import SwiftData




@Model
class CartItem{
    
    var itemObject:item
    var num:Int
    
    init(itemObject: item, num: Int) {
        self.itemObject = itemObject
        self.num = num
    }
    
    
}
