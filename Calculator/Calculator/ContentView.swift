//
//  ContentView.swift
//  Calculator
//
//  Created by Devendra kumar narware on 26/06/26.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        var arr: [[String]] = [
            
            ["7", "8", "9", "+"],
            ["4", "5", "6", "-"],
            ["1", "2", "3", "/"]
        ]
        
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            HStack{
                
                Spacer()
                
                Text("0")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding()
            }
            // this is the output area
            
            VStack{
                
                for row in arr{
                    
                    HStack{
                        for col in row{
                            
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
