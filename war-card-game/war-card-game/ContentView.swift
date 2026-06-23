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
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("logo")
                
                HStack{
                    Image("card2")
                    Spacer()
                    Image("card3")
                }
                .padding(40)
                
                Image("button")
                
                HStack (spacing: 80){
                    VStack (spacing: 20){
                        Text("Player")
                            .bold()
                        Text("0")
                            .font(.largeTitle)
                    }

                    VStack (spacing: 20){
                        Text("CPU")
                            .bold()
                        Text("0")
                            .font(.largeTitle)
                    }
                }
                .foregroundStyle(.white)
                .padding(30)
            }
            .padding()
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
