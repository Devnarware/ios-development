//
//  ContentView.swift
//  test
//
//  Created by Devendra kumar narware on 22/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack (alignment: .leading, spacing: 10){
            Image("img")
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
            
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
            
            
            Text("Must place to vist at least once in life")
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
    }
}

#Preview {
    ContentView()
}
