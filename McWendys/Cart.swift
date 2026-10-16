//
//  Cart.swift
//  McWendys
//
//  Created by Suraj Srivastava on 10/6/26.
//

import SwiftData
import SwiftUI

struct Cart: View {
    
    
    
    @State var carty: [CartItem]
    @State var price = 0.0

    var body: some View {
        VStack {
            List {
                ForEach(0..<carty.count, id: \.self) { i in
                    HStack {
                        Text(
                            "\(carty[i].num) " + carty[i].itemObject.name
                                + " $\(carty[i].itemObject.price) "
                                + "\(carty[i].itemObject.itemIngredients[0].name)"
                                + " \(carty[i].itemObject.itemIngredients[0].num)"
                        )
                        Text(
                            "\(carty[i].itemObject.itemIngredients[1].name)"
                                + " \(carty[i].itemObject.itemIngredients[1].num)"
                        )

                    }

                }
            }

            HStack {

                Text("Total: ")
                Text(price, format: .currency(code: "USD"))

            }

            //            Button("Save Cart"){
            ////                var temp = CartyHolder(cartArray: carty )
            ////                context.insert(temp)
            ////                try? context.save()
            //
            //            }

        }
        .onAppear {

            for i in 0..<carty.count {
                price =
                    price + (carty[i].itemObject.price * Double(carty[i].num))

            }

        }

    }
}
