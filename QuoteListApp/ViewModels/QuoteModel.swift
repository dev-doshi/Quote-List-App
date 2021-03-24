//
//  File.swift
//
//
//  Created by Dev Doshi on 24.03.21.
//

import Foundation

class QuoteModel: ObservableObject{
    @Published var quote = [Quote]()
    
    init() {
        self.quote = DataService.getLocalData()
    }
}
