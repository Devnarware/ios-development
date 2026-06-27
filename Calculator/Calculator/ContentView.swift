//
//  ContentView.swift
//  Calculator
//
//  Created by Devendra kumar narware on 26/06/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var enteredValue: String = "0"
    
    var body: some View {
        
        let arr: [[String]] = [
            
            ["del", "AC", "%", "÷"],
            ["7", "8", "9", "x"],
            ["4", "5", "6", "-"],
            ["1", "2", "3", "+"],
            ["+/-", "0", "•", "="]
        ]
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            VStack{
                
                Spacer()
                HStack{
                    
                    Spacer()
                    
                    Text(enteredValue)
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding()
                }
                // this is the output area
                VStack{
                    
                    ForEach(arr, id: \.self){ row in
                        HStack{
                            ForEach(row, id: \.self){ col in
                                Button{
                                    didTap(click: col)
                                }label: {
                                    Text(col)
                                        .font(.system(size: 32))
                                        .frame(width: 70, height: 70)
                                        .background(Color.gray)
                                        .foregroundColor(.white)
                                        .cornerRadius(35)
                                }
                            }
                        }
                    }
                    
                }
            }
        }
    }
    
    func didTap(click: String){
        switch click{
        case "AC":
            enteredValue = "0"
        case "del":
            if enteredValue.count > 1{
                enteredValue.removeLast()
            }else{
                enteredValue = "0"
            }
//        case "=" :
//        case "+/-" :
//        case "%" :
//        case "÷" :
//        case "+", "-", "x" :
        default :
            if enteredValue == "0"{
                enteredValue = click
            }else{
                enteredValue += click
            }
        }
    }
}

#Preview {
    ContentView()
}
