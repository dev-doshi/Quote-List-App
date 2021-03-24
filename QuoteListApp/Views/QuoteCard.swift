//
//  ContentView.swift
//  Shared
//
//  Created by Dev Doshi on 24.03.21.
//

import SwiftUI

struct Card: View {
    
    var quote:[Quote]?
        
    var body: some View {
        
        ZStack{
            Image("calm")
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(20)
            
            
            VStack{
                Text("test")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(width: 350, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card()
    }
}
