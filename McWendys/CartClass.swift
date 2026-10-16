//
//  CartClass.swift
//  McWendys
//
//  Created by Suraj Srivastava on 10/15/26.
//

import Foundation
import SwiftData


@Model
class CartClass{
    
    var cart: [CartItem] = []
    
    init(cart: [CartItem]) {
        self.cart = cart
    }
    
}
