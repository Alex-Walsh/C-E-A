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
        let screenSize = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        let buttonWidth = screenWidth - 20
        let buttonHeight = screenHeight / 8 
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
        .frame(width: buttonWidth, height: buttonHeight, alignment: .center)
        .background(Color.green)
        .foregroundColor(Color.white)
        .cornerRadius(20)
        }.padding(5)
    }
}





