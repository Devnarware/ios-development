//
//  ContentView.swift
//  test
//
//  Created by Devendra kumar narware on 22/06/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack (alignment: .leading){
            Image("img")
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
            
            HStack{
                Text("Indus Valley")
                    .font(.title)
                    .bold()
                    
                Spacer()
                
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.fill")
                    Image(systemName: "star.leadinghalf.filled")
                
            }
            .padding(.leading, 8)
            .padding(.trailing, 8)
            
            
            Text("Must place to vist at least once in life")
                .padding(.leading, 8)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
