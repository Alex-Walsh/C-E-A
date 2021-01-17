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
        
        Text(GlobalVariables.resultFromAPI)
}
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView(execution: "No Symptoms")
    }
}
