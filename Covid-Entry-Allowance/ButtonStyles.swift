//
//  ButtonStyles.swift
//  Covid-Entry-Allowance
//
//  Created by Alex Walsh on 2021-01-08.
//  Copyright © 2021 Alex Walsh. All rights reserved.
//

import SwiftUI


func Enter(status: String) -> Void {
    if(status == "No Symptoms Or Contact") {
           print("No Symptoms Or Contact")
        
    } else if (status == "Symptoms Or Contact"){
        print("Symptoms Or Contact")
    } else {
        print("Unknown")
    }
    return
}


struct ButtonView: View {
    @State private var action: Int? = 0
    var displayedUse: String
    var execution: String
    
    var body: some View {
        VStack {
            NavigationLink(
                destination: SwiftUIView(execution: ""), tag : 1, selection: $action) {
                EmptyView()
            }
              
        Button(action: {
            
            self.action = 1 
            
        }, label: {
            Text(displayedUse)
        })
        .font(.title)
        .padding(30)
        
        .background(Color.green)
        .foregroundColor(Color.white)
        .cornerRadius(20)
    }
    }
}





