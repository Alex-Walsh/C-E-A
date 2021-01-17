//
//  qrgeneration.swift
//  Covid-Entry-Allowance
//
//  Created by Alex Walsh on 2021-01-09.
//  Copyright © 2021 Alex Walsh. All rights reserved.
//

import Foundation
import SwiftUI
import CoreImage.CIFilterBuiltins



struct QrCodeView: View {
    let filter = CIFilter.qrCodeGenerator()
    let context = CIContext()
    let data : String
    var body: some View {
        Image(uiImage: generateQrCode(data: data))
            .interpolation(.none)
            .resizable().frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
    }
    func generateQrCode(data: String) ->  UIImage {
        let value = Data(data.utf8)
        
        filter.setValue(value, forKey: "inputMessage")
        
        if let qrCodeImage = filter.outputImage {
            if let qrCodeCGImage = context.createCGImage(qrCodeImage, from: qrCodeImage.extent) {
                return UIImage(cgImage: qrCodeCGImage)
            }
        } 
            return UIImage(systemName: "xmark" ) ?? UIImage()
        
    }
    
}


//struct QRGeneratorView: View {
//    @State private var text = ""
//
//    var body: some View {
//        VStack {
//            TextField("Enter code", text: $text)
//                .textFieldStyle(RoundedBorderTextFieldStyle())
//                .padding()
//            Image(uiImage: UIImage(data: getQRCodeDate(text: text)!)!)
//                .resizable()
//                .frame(width: 200, height: 200)
//        }
//    }
//
//    func getQRCodeDate(text: String) -> Data? {
//        guard let filter = CIFilter(name: "CIQRCodeGenerator") else { return nil }
//        let data = text.data(using: .ascii, allowLossyConversion: false)
//        filter.setValue(data, forKey: "inputMessage")
//        guard let ciimage = filter.outputImage else { return nil }
//        let transform = CGAffineTransform(scaleX: 10, y: 10)
//        let scaledCIImage = ciimage.transformed(by: transform)
//        let uiimage = UIImage(ciImage: scaledCIImage)
//        return uiimage.pngData()!
//    }
//}
