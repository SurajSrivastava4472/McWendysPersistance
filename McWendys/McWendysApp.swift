//
//  McWendysApp.swift
//  McWendys
//
//  Created by SURAJ SRIVASTAVA on 10/1/26.
//

import SwiftUI
import SwiftData

@main
struct McWendysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: CartItem.self)
            
           //     .modelContainer(for: [CartItem.self, item.self, Ingredient.self])
        }
    }
}
