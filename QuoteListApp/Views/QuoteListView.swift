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
        ScrollView{
            ForEach(model.quote){ q in
                Text("JJ")
            }
        }
    }
}

struct QuoteListView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteListView()
    }
}
