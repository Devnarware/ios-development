//
//  ContentView.swift
//  war-card-game
//
//  Created by Devendra kumar narware on 23/06/26.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card12"
    @State var cpuCard = "card10"
    // variables for cards
    
    @State var playerScore = 0
    @State var cpuScore = 0
    // variables for score
    
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
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                // holding the cards
                
                Spacer()
                
                Button{
                    dealCards()
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
    
    func dealCards(){
       // generatre random value
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)
        
      // update the cards
        playerCard = "card\(playerValue)"
        cpuCard = "card\(cpuValue)"
        
      // update the score
        if playerValue > cpuValue{
            playerScore += 1
        }else if cpuValue > playerValue{
            cpuScore += 1
        }else{
            playerScore += 1
            cpuScore += 1
        }
        
    }
}

#Preview {
    ContentView()
}
