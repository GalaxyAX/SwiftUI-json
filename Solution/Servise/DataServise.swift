//
//  DataServise.swift
//  Solution
//
//  Created by Andrii Zlenko on 15.07.2022.
//

import Foundation

class DataServise {
    
    static func getLocalData() -> [Autor] {
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        guard pathString != nil else {
            return [Autor]()
        }
        let url = URL(fileURLWithPath: pathString!)
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do {
                let autorData = try decoder.decode([Autor].self, from: data)
                for a in autorData {
                    a.id = UUID()
                }
                return autorData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        return [Autor]()
    }
}
