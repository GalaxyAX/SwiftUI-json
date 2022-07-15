//
//  Autor.swift
//  Solution
//
//  Created by Andrii Zlenko on 15.07.2022.
//

import Foundation

class Autor: Identifiable, Decodable {
    
    var id: UUID?
    var name: String
    var quotes: [String]
    var image: String
    
}
