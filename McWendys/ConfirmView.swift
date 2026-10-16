//
//  ConfirmView.swift
//  McWendys
//
//  Created by Suraj Srivastava on 10/8/26.
//

import SwiftUI

struct ConfirmView: View {
    var body: some View {
        Text("Your Item Has Been Added!")
        
        HStack{
            Image(systemName: "bag")
            Image(systemName: "checkmark")
        }
    }
}

#Preview {
    ConfirmView()
}
