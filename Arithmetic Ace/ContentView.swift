//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Lillian Yang on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    let multiplicand = Int.random(in: 1...12)
    let multiplier = Int.random(in: 1...12)
    @State var inputGiven = ""
    
    
    var correctProduct: Int{
        return multiplicand * multiplier
    }
    //MARK: Computed Property
    var body: some View {
        
        VStack(spacing: 0){
            
            HStack{
            
                Text("✕")
                    
                
                Spacer()
                
                VStack(alignment: .trailing){
                    Text("\(multiplicand)")
                    Text("\(multiplier)")
                }
                
                
            }
            
            
            
            Divider()
            
            HStack {
                Image(systemName: "checkmark.circle")
                    .foregroundColor(.green)
                Spacer()
                TextField("Product", text:
                     $inputGiven)
                    .multilineTextAlignment(.trailing)
            }
            
            Button(action: {
                    guard let productGiven = Int(inputGiven) else {
                return
                    }
                //check answer
                if productGiven == correctProduct {
                    
                }
                
            }, label: {
                Text("Check Answer")
                    .font(.largeTitle)
            })
           
                .padding()
                .buttonStyle(.bordered)
            
            
            Spacer()
            

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
