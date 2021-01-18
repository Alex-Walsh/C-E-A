//
//  ContentView.swift
//  Covid-Entry-Allowance
//
//  Created by Alex Walsh on 2021-01-08.
//  Copyright © 2021 Alex Walsh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State private var maxWidth: CGFloat = .zero
    @State private var showingAlert = false
    var entryCode: String = ""
    
    public func showMe() {
        print("Tapped")
       
        self.showingAlert = true;
        Alert(title: Text("Guess What"), message: Text("You Tapped The Button"), dismissButton: .default(Text("Got It")))
        
        
        return
    }
    var body: some View {
        TabView(selection: $selection){
            
            NavigationView {
            VStack {
                
                Text("Check-In")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                
                dateDisplay()
                  Spacer()
                
                ButtonView(displayedUse: "Yes To One Or More", execution: "0")
                
                ButtonView(displayedUse: "No To Everything", execution: "1")
                
                    Spacer()
           
            
            }
            }
            
            .tabItem {
                VStack {
                    Image("first")
                    Text("Check-In")
                }
            }.tag(0)
         
            
            
            Text("Settings")
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Settings")
                    }
                }
                .tag(1)
            
        }
       
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
