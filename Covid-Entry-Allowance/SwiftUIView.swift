//
//  SwiftUIView.swift
//  Covid-Entry-Allowance
//
//  Created by Alex Walsh on 2021-01-15.
//  Copyright © 2021 Alex Walsh. All rights reserved.
//

import SwiftUI




struct SwiftUIView: View {
    
   
    
    var execution : String
    
    
    var body: some View {
        Text("Please Scan This Code At The Entrance Of The Facility")
            .font(.title)
            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        Spacer()
        QrCodeView(data: SendData())
        Spacer()
        Spacer()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(execution: "No Symptoms")
    }
}
