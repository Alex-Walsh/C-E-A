//
//  dateDisplay.swift
//  Covid-Entry-Allowance
//
//  Created by Alex Walsh on 2021-01-17.
//  Copyright © 2021 Alex Walsh. All rights reserved.
//

import SwiftUI

struct dateDisplay: View {
    let date = returnDate()
    
    var body: some View {
        
        
        Text(date)
    }
}

struct dateDisplay_Previews: PreviewProvider {
    static var previews: some View {
        dateDisplay()
    }
}
