//
//  SendResults.swift
//  Covid-Entry-Allowance
//
//  Created by Alex Walsh on 2021-01-09.
//  Copyright © 2021 Alex Walsh. All rights reserved.
//

import Foundation



public func SendData() -> String {
    var returnString : String = ""
    let url = URL(string: "https://us-central1-fitness-app-db0b5.cloudfunctions.net/api/test")
    guard let requestURL = url else { fatalError()}
    var request = URLRequest(url:requestURL)
    request.httpMethod = "POST"
    
    
    let postString:String = "status=nosymptoms"
    request.httpBody = postString.data(using: String.Encoding.utf8)
    
    let task = URLSession.shared.dataTask(with: request) {(data,response, error) in
        if let error = error {
            print("Error Took Place \(error)")
            return
        }
        
        if let data = data, let dataString = String(data: data, encoding: .utf8) {
            print(dataString)
            print(type(of: dataString))
            returnString = dataString
            print("from non void: ",returnString)
            return
        }
        return
    }
    

    task.resume()
    while returnString == "" { // wait for the value to not be empty to return
        
    }
    print("return string:", returnString)
    return returnString
    }
