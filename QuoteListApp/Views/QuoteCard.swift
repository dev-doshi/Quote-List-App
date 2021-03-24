//
//  ContentView.swift
//  Shared
//
//  Created by Dev Doshi on 24.03.21.
//

import SwiftUI

struct Card: View {
    
    var quote:Quote
        
    var body: some View {
        
        ZStack{
            Image(quote.image)
                .resizable()
                .scaledToFill()
                .frame(width: 400, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .cornerRadius(20)
            
            
            VStack(alignment: .leading){
                Text(quote.quote)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(width: 350, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
                    .shadow(radius: 10)
                HStack{
                    Text("- " + quote.name)
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    
                }
            }
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
