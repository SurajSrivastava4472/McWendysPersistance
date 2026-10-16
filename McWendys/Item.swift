
//
//  Item.swift
//  McWendys
//
//  Created by SURAJ SRIVASTAVA on 10/5/26.
//
import Foundation
import SwiftData
import SwiftUI



@Model
class item{
     var name:String
     var price:Double
     var calories:Int
    var itemIngredients:[Ingredient]
    

    
    
    init (namei: String, pricei: Double, caloriesi: Int, itemIngredientsi: [Ingredient]){
        
        name = namei
        price = pricei
        calories = caloriesi
        itemIngredients = itemIngredientsi
    }
}

