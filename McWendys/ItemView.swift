//
//  SwiftUIView.swift
//  McWendys
//
//  Created by Suraj Srivastava on 10/5/26.
//

import SwiftUI
import SwiftData




struct ItemView: View {
    
    @Environment(\.modelContext) var context
    
    @State var object:item
    
    @State var go = false
    @State var holder = 0
    @State var enabled = true
    @State var enableder2 = true
    @State var enableder3 = true
    
    var body: some View {
        NavigationStack{
        VStack{
            
            Image(object.name)
                .resizable()
                .scaledToFit()
            
            
            ZStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(.gray)
                    .opacity(0.3)
                    .frame(height: 70)
                
                VStack {
                    
                    Text(object.name)
                    Text( "\(object.calories) calories" )
                    
                    HStack{
                        Text("Price")
                        Text(object.price, format: .currency(code: "USD"))
                        
                    }
                    
                }
                
            }
            VStack{
                
                
                
                HStack{
                 
                    Text( "\(object.itemIngredients[0].name)" )
                    Text("\(object.itemIngredients[0].num)")
                    
                    
                    Button {
                        if(object.itemIngredients[0].num > 0){
                            object.itemIngredients[0].num = object.itemIngredients[0].num - 1
                            if(object.itemIngredients[0].num == 0){
                              
                            }
                        }
                    } label: {
                        Image(systemName: "minus.circle")
                            .resizable()
                            .frame(width: 30, height:  30)
                    }
                    Button {
                        object.itemIngredients[0].num = object.itemIngredients[0].num + 1
                        if(object.itemIngredients[0].num > 0){
                           
                        }
                    } label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 30, height:  30)
                    }
                    
                    
                    
                    
                    
                    
                }
                
                HStack{
                 
                    Text( "\(object.itemIngredients[1].name)" )
                    Text("\(object.itemIngredients[1].num)")
                    
                    
                    Button {
                        if(object.itemIngredients[1].num > 0){
                            object.itemIngredients[1].num = object.itemIngredients[1].num - 1
                            if(object.itemIngredients[1].num == 0){
                             
                            }
                        }
                    } label: {
                        Image(systemName: "minus.circle")
                            .resizable()
                            .frame(width: 30, height:  30)
                    }
                    Button {
                        object.itemIngredients[1].num = object.itemIngredients[1].num + 1
                        if(object.itemIngredients[1].num > 0){
                           
                        }
                    } label: {
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 30, height:  30)
                    }
                    
                    
                    
                    
                    
                    
                }
               
                
            }
            
            HStack{
                
               
                Button {
                    if(holder > 0){
                        holder = holder - 1
                        if(holder == 0){
                            enabled = true
                        }
                    }
                } label: {
                    Image(systemName: "minus.circle")
                        .resizable()
                        .frame(width: 30, height:  30)
                }
                Button {
                    holder = holder + 1
                    if(holder > 0){
                        enabled = false
                    }
                } label: {
                    Image(systemName: "plus.circle")
                        .resizable()
                        .frame(width: 30, height:  30)
                }
                Text("\(holder)")
                
                
                
                
            }
            
            
            Button("Add"){
                
                
                let temp = CartItem(itemObject: object, num: holder)
                context.insert(temp)
                try? context.save()
                
                
                
                go.toggle()
         
                
                
            }
            .buttonStyle(.glass)
            .disabled(enabled)
            .navigationDestination(isPresented: $go) {
            ConfirmView()
            }
          
            
        }
        .padding()
        
    }
     
        
    }
}



