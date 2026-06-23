//
//  ContentView.swift
//  test
//
//  Created by Devendra kumar narware on 22/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        ZStack{
            Color(.mint)
                .ignoresSafeArea()
            
            VStack (alignment: .leading, spacing: 10){
                Image("img")
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                
                HStack{
                    Text("Indus Valley")
                        .font(.title)
                        .bold()
                        
                    Spacer()
                    
                        VStack{
                            HStack{
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.fill")
                                Image(systemName: "star.leadinghalf.filled")
                            }
                            Text("(Reviews 361)")
                        }
                        .foregroundColor(.orange)
                        .font(.caption)
                }
                .padding(.leading, 8)
                .padding(.trailing, 8)
                
                
                Text("Must place to visit at least once in life")
                    .padding(.leading, 8)
                
                HStack{
                    Spacer()
                    Image(systemName: "fork.knife")
                    Image(systemName: "binoculars.fill")
                }
                .foregroundStyle(.gray)
                .font(.caption)
                .padding(.trailing, 8)
            }
            .padding()
            .background(){
                Rectangle()
                    .foregroundStyle(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
                    .shadow(color: .black.opacity(0.8), radius: 15,
                            x: 0,
                            y: 10)
            }
            .padding(10)
        }
        }
}

#Preview {
    ContentView()
}
