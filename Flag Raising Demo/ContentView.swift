//
//  ContentView.swift
//  Flag Raising Demo
//
//  Created by JiaChen(: on 12/6/21.
//

import SwiftUI

struct ContentView: View {
    @State var offset : CGFloat = 20
    @State var completed = false
    @State var showingSheet = false
    var body: some View {
        VStack {
            
            HStack(alignment: .bottom, spacing: -10) {
                Rectangle()
                    .frame(width: 10)
                Text("🇸🇬")
                    .font(.system(size: 100))
                    .font(.system(size: 50))
                    .bold()
                    .offset(x: 0, y: offset)
    
            }
            
            Button("Majulah!") {
                if offset <= -550{
                    print("done")
                    completed = true
                    showingSheet = true
                    
                }else{
                    offset -= 10
                }
            }
            .padding()
            .frame(width: 170, height: 50)
            .background(Color.red)
            .foregroundColor(Color.white)
            .cornerRadius(10)
            if completed{
                Button("Reset"){
                    completed = false
                    offset = 20
                }.padding()
            }
        }
        .sheet(isPresented: $showingSheet){
            SheetView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

