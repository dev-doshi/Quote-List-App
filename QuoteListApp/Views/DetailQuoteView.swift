//
//  DetailQuoteView.swift
//  QuoteListApp
//
//  Created by Dev Doshi on 24.03.21.
//

import SwiftUI

struct DetailQuoteView: View {
    
    var quote:Quote
    
    var body: some View {
        ZStack{
            Image(quote.image)
                .scaledToFill()
                
            Text(quote.quote)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
                .frame(width: 350, height: 350, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
                .shadow(radius: 10)
        }
    }
}

struct DetailQuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
