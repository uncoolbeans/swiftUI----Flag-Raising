//
//  finished.swift
//  Flag Raising Demo
//
//  Created by MMS on 16/6/21.
//

import Foundation
import SwiftUI
struct SheetView: View {
    var body: some View {
        VStack{
            Text("""
🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬
Majulah Singapura!!!
🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬🇸🇬
""")
    .font(.headline)
    .multilineTextAlignment(.center)
    .padding()
    .background(Color.red)
    .foregroundColor(Color.white)
    .cornerRadius(10)
    
            
            
            }
            
        }
    }
struct modal_preview: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}

