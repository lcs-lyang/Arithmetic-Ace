//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Lillian Yang on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            
            HStack{
            
                Text("✕")
                    
                
                Spacer()
                
                VStack{
                    Text("5")
                    Text("6")
                }
                
                
            }
            
            .font(.system(size: 72))
            .padding()
            
            Divider()
            
            Button(action: {
                // NOTE: Output will not be shown unless this app is run in the "full" simulator
                print("Button was pressed")
            }, label: {
                Text("Check Answer")
            })
            .buttonStyle(.bordered)

        }
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
