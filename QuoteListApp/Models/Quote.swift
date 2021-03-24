//
//  Quote.swift
//  test (iOS)
//
//  Created by Dev Doshi on 24.03.21.
//

import Foundation

class Quote: Identifiable, Decodable{
    var id:UUID?
    var name:String
    var quote:String
    var image:String
}
