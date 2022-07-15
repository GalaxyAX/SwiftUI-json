//
//  AutorModel.swift
//  Solution
//
//  Created by Andrii Zlenko on 15.07.2022.
//

import Foundation

class AutorModel: ObservableObject {
    @Published var autors = [Autor]()
    
    init() {
        self.autors = DataServise.getLocalData()
    }
}
