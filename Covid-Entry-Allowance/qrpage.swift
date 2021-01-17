//
//  qrpage.swift
//  Covid-Entry-Allowance
//
//  Created by Alex Walsh on 2021-01-10.
//  Copyright © 2021 Alex Walsh. All rights reserved.
//

import SwiftUI

struct qrpage: View {
    var body: some View {
        QrCodeView(data: "My Name Jeff")
    }
}

struct qrpage_Previews: PreviewProvider {
    static var previews: some View {
        qrpage()
    }
}
