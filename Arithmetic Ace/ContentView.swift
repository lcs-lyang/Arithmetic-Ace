//
//  ContentView.swift
//  Arithmetic Ace
//
//  Created by Lillian Yang on 2022-02-07.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Stored Properties
    @State var multiplicand = Int.random(in: 1...12)
    @State var multiplier = Int.random(in: 1...12)
    @State var inputGiven = ""
    
    //Has an answer been checked?
    @State var answerChecked = false
    
    //Was the answer given actually correct?
    @State var answerCorrect = false
   
    @State var currentCand = Int.random(in: 1...12)
    @State var currentPlier = Int.random(in: 1...12)

    //MARK: Computed Property
    
    var correctProduct: Int{
        return multiplicand * multiplier
    }
    
    
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
                //           CONDITION       true  false
                    .opacity(answerCorrect ? 1.0 : 0.0)
                Spacer()
                TextField("Product", text:
                     $inputGiven)
                    .multilineTextAlignment(.trailing)
            }
            
            Button(action: {
                //Answer has been checked
                answerChecked = true
                    guard let productGiven = Int(inputGiven) else {
                return
                    }
                //check answer
                if productGiven == correctProduct {
                  answerCorrect = true
                } else{
                    answerCorrect = false
                }
                
            }, label: {
                Text("Check Answer")
                    .font(.largeTitle)
            })
           
                .padding()
                .buttonStyle(.bordered)
            
            
            Button(action: {
                multiplier = currentPlier
                multiplicand = currentCand
                while multiplier == currentPlier {
                    currentPlier = Int.random(in: 1...12)
                }
                
                while multiplicand == currentCand{
                    currentCand = Int.random(in: 1...12)
                }
                 
                answerCorrect = false
            }, label: {
                Text("New Question")
                    .font(.largeTitle)
            })
                .opacity(answerCorrect ? 1.0 : 0.0)
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
