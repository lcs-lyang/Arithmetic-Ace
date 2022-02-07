//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Lillian Yang on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: 0){
            
            HStack{
            
                Text("✕")
                    
                
                Spacer()
                
                VStack{
                    Text("5")
                    Text("6")
                }
                
                
            }
            
            
            
            Divider()
            
            HStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                Spacer()
                Text("30")
            }
            
            Spacer()
            
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Check Answer")
            })
            .buttonStyle(.bordered)

        }
        .padding(.horizontal)
        .font(.system(size: 72))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
