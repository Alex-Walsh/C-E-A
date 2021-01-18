//
//  findDate.swift
//  Covid-Entry-Allowance
//
//  Created by Alex Walsh on 2021-01-17.
//  Copyright © 2021 Alex Walsh. All rights reserved.
//

import Foundation


func returnDate() -> String {
    let date = Date()
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"
    let stringDate = formatter.string(from: date)
    return stringDate
}
