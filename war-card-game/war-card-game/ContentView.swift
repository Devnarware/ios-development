//
//  ContentView.swift
//  war-card-game
//
//  Created by Devendra kumar narware on 23/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        var playerCard = "card12"
        var cpuCard = "card10"
        // variables for cards
        
        var playerScore = 0
        var cpuScore = 0
        // variables for score
        
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
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
                        Text("\(playerScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding()
                        Text("\(cpuScore)")
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
