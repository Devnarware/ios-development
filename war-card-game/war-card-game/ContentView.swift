//
//  ContentView.swift
//  war-card-game
//
//  Created by Devendra kumar narware on 23/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            
            
            Image("background-plain")
            // the main image in the background
            
            VStack {
                
                Spacer()
                
                Image("logo")
                // logo image
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image("card2")
                    Spacer()
                    Image("card3")
                    Spacer()
                }
                // holding the cards
                
                Spacer()
                
                Button{
                }
                label: {
                    Image("button")
                }
                // deal button
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding()
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding()
                        Text("0")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                // holding the score detalis
                
                Spacer()
                
            }
            .padding()
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
