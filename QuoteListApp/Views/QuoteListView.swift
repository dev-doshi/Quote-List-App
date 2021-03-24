//
//  QuoteListView.swift
//  test
//
//  Created by Dev Doshi on 24.03.21.
//

import SwiftUI

struct QuoteListView: View {
    
    @ObservedObject var model = QuoteModel()
    
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(model.quote){ q in
                    NavigationLink(
                        destination: DetailQuoteView(quote: q),
                        label: {
                            Card(quote: q).padding(.bottom)
                        }
                    )
                }
            }.navigationBarTitle("Quotes")
        }
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
