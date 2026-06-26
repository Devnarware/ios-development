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
            
            VStack{
                
                Spacer()
                HStack{
                    
                    Spacer()
                    
                    Text("0")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .padding()
                }
                // this is the output area
                Spacer()
                VStack{
                    
                    ForEach(arr, id: \.self){ row in
                        HStack{
                            ForEach(row, id: \.self){ col in
                                Button{
                                    
                                }label: {
                                    Text(col)
                                        .font(.system(size: 32))
                                        .frame(width: 70, height: 70)
                                        .background(Color.orange)
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
}

#Preview {
    ContentView()
}
