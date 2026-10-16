//
//  Ingredient.swift
//  McWendys
//
//  Created by Suraj Srivastava on 10/7/26.
//

import Foundation
import SwiftData




@Model

class Ingredient{
    
    var name:String
    
    var num:Int
    
    
    
    
    init(name: String, num: Int) {
        self.name = name
        self.num = num
    }
    
    
    
    
}



