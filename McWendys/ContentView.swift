//
//  ContentView.swift
//  McWendys
//
//  Created by SURAJ SRIVASTAVA on 10/1/26.
//
import SwiftUI
import SwiftData


struct ContentView: View {

    
    @Environment(\.modelContext) var context
    
    
    
    @State var items = ["Whopper", "Soda", "Fries", "Taco", "Sauce"]

    @State var ingreidents1 = [
        Ingredient(name: "Beef", num: 1), Ingredient(name: "Onion", num: 1),
    ]

    @State var ingreidents2 = [
        Ingredient(name: "Water", num: 1), Ingredient(name: "Syrup", num: 1),
    ]

    @State var ingreidents3 = [
        Ingredient(name: "Salt", num: 1), Ingredient(name: "Cheese", num: 0),
    ]

    @State var ingreidents4 = [
        Ingredient(name: "Beef", num: 1), Ingredient(name: "Lettuce", num: 0),
    ]

    @State var ingreidents5 = [
        Ingredient(name: "Sugar", num: 1), Ingredient(name: "Catsup", num: 0),
    ]

    @State var itemIngredients: [[Ingredient]] = [[]]

    @State var prices = [4.99, 2.99, 3.99, 9.99, 0.99]
    @State var calories = [500, 250, 320, 670, 25]
    @State var goToCart = false

    @State var itemObjects: [item] = []

    
    
    
   @Query var cart: [CartItem]
    //@State var cart: [CartItem] = []
    
   

    var body: some View {
        NavigationStack {
            VStack {

                VStack {}
                    .onAppear {
                        
                
                   
                        
                       
                        
                        itemIngredients = [
                            ingreidents1, ingreidents2, ingreidents3,
                            ingreidents4, ingreidents5,
                        ]

                        itemObjects = []

                        for i in 0..<items.count {
                            itemObjects.append(
                                item(
                                    namei: items[i],
                                    pricei: prices[i],
                                    caloriesi: calories[i],
                                    itemIngredientsi: itemIngredients[i]
                                )
                            )
                            print(cart)
                        }
                    }
Spacer()
                HStack {
                    Text("McWendys")
                        .font(.custom("Insanibu", size: 30))

                    Text("\(cart.count)")
                        .fontDesign(.rounded)
                        .offset(x: 10,y: -15)
                        .foregroundStyle(.red)
                    Button {
                        goToCart = true
                    } label: {
                        Image(systemName: "cart")
                            .resizable()
                            .frame(width:30 ,height:30)
                    }
                    .navigationDestination(isPresented: $goToCart) {
                        Cart(carty: cart)
                     
                    }

                }
                Divider()
                Text("Make Your Selection")
                    .multilineTextAlignment(.center)
                    .fontDesign(.serif)
                List {
                
                       
                    ForEach(0..<itemObjects.count, id: \.self) { i in

                        NavigationLink(
                            itemObjects[i].name + " $\(itemObjects[i].price)"
                        ) {
                            ItemView(object: itemObjects[i])
                        }

                    }

                }
                

            }
            .padding()
        }
        
    }
        
}
#Preview {
    ContentView()
}
